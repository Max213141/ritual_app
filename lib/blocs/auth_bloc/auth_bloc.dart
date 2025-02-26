import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/entities/hive_entities/user_data.dart';
import 'package:ritual_app/utils/loger.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'auth_bloc');

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;

  AuthBloc({
    required this.auth,
    required this.googleSignIn,
  }) : super(const _Initial()) {
    on<AuthEvent>((events, emit) async {
      await events.map(
        createUser: (event) async => await _createUser(event, emit),
        signInWithGoogle: (event) async => await _signInWithGoogle(event, emit),
        logIn: (event) async => await _logIn(event, emit),
        logOut: (event) async => await _logOut(event, emit),
        deleteUser: (event) async => await _deleteUser(event, emit),
        resetPassword: (event) async => await _resetPassword(event, emit),
        // next: (_) async => await _next(emit),
        // previous: (_) async => await _previous(emit),
      );
    });
  }

  _createUser(CreateUserEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      // 🔹 Check if a user with this email already exists
      final signInMethods = await auth.fetchSignInMethodsForEmail(event.email);

      if (signInMethods.contains('google.com')) {
        // 🔴 User already registered with Google, prompt them to log in via Google
        emit(AuthState.authError(
            errorText:
                'This email is already linked to a Google account. Please sign in with Google.'));
        return;
      }

      // 🔹 If no existing Google account, create new user with email & password

      // Create user in Firebase Authentication
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      final uid = userCredential.user?.uid;
      if (uid == null) {
        emit(
          const AuthState.authError(
            errorText: 'Ошибка создания пользователя',
          ),
        );
        return;
      }

      _log('User $uid signed in');

      // Create an AuthData object
      final newUser = AuthData(
        userId: uid,
        email: event.email,
        displayName: event.username ??
            'User', //TODO create input field for user_name Default name if not provided
        profilePicUrl: '', // Default empty profile picture
        createdAt: DateTime.now(),
        authProvider: 'email',
        googleId: null,
        linkedAccounts: ['email'],
        memoryDesks: [],
      );

      // Save user data in Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .set(newUser.toJson());

      _log('User created and stored successfully');

      // Automatically log in the user after registration
      add(LogInEvent(email: event.email, password: event.password));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(const AuthState.authError(errorText: 'Пароль слишком слабый.'));
      } else if (e.code == 'email-already-in-use') {
        emit(const AuthState.authError(
            errorText: 'Этот email уже используется.'));
      } else {
        _log('USER CREATION AUTH EXCEPTION: $e');
        emit(AuthState.authError(
            errorText: 'Ошибка при создании пользователя.'));
      }
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED USER CREATION AUTH EXCEPTION: $e');
    }
  }

  _signInWithGoogle(SignInWithGoogle event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      // Trigger Google Sign-In
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        emit(const AuthState.authError(errorText: 'User canceled the sign-in'));
        return;
      }

      // Get authentication credentials
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with Firebase
      final UserCredential userCredential =
          await auth.signInWithCredential(credential);
      final String uid = userCredential.user!.uid;
      final String email = googleUser.email;
      final String displayName = googleUser.displayName ?? '';
      final String profilePicUrl = googleUser.photoUrl ?? '';

      // Check if user exists in Firestore
      final userRef = FirebaseFirestore.instance.collection('users').doc(uid);
      final userDoc = await userRef.get();

      if (userDoc.exists) {
        // 🔹 User exists, update `linkedAccounts` if needed
        final existingData = userDoc.data()!;
        final List<String> linkedAccounts =
            List<String>.from(existingData['linkedAccounts'] ?? []);
        if (!linkedAccounts.contains('google')) {
          linkedAccounts.add('google');
        }

        await userRef.update({
          'linkedAccounts': linkedAccounts,
          'googleId': uid, // Ensure Google ID is saved
          'profilePicUrl': profilePicUrl, // Update if missing
        });

        _log('Existing user logged in with Google.');
      } else {
        // 🔹 New user, create Firestore document
        await userRef.set({
          'userId': uid,
          'email': email,
          'displayName': displayName,
          'profilePicUrl': profilePicUrl,
          'createdAt': FieldValue.serverTimestamp(),
          'authProvider': 'google',
          'googleId': uid,
          'linkedAccounts': ['google'],
          'memoryDesks': [],
        });

        _log('New user registered with Google.');
      }

      // 🔹 Save user data in Hive (excluding password)
      final hiveUserData = UserData(
        uid: uid,
        email: email,
        displayName: displayName,
        profilePicUrl: profilePicUrl,
        authProvider: 'google',
        linkedAccounts: ['google'],
        memoryDesks: [],
      );

      await Hive.box<UserData>('user_data').put(0, hiveUserData);

      emit(const AuthState.logInSuccess());
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('GOOGLE SIGN-IN ERROR: $e');
    }
  }

  _logIn(LogInEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      _log('User login: ${event.email.trim()}');

      // Sign in user with Firebase Authentication
      final userCredential = await auth.signInWithEmailAndPassword(
        email: event.email.trim(),
        password: event.password.trim(),
      );

      final uid = userCredential.user?.uid;
      if (uid == null) {
        emit(const AuthState.authError(
            errorText: 'Ошибка входа: UID не найден.'));
        return;
      }

      // Fetch user data from Firestore
      final docSnapshot =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (!docSnapshot.exists) {
        emit(const AuthState.authError(
            errorText: 'Ошибка: Данные пользователя не найдены.'));
        return;
      }

      final dbData = docSnapshot.data();
      if (dbData == null) {
        emit(const AuthState.authError(
            errorText: 'Ошибка: Неверные данные пользователя.'));
        return;
      }

      // Convert Firestore data to AuthData model
      final authData = AuthData.fromJson(dbData);

      // Save user data (excluding password) in Hive
      final hiveUserData = UserData(
        uid: authData.userId,
        email: authData.email,
        displayName: authData.displayName,
        profilePicUrl: authData.profilePicUrl,
        authProvider: authData.authProvider,
        linkedAccounts: authData.linkedAccounts,
        memoryDesks: authData.memoryDesks,
      );

      await Hive.box<UserData>('user_data').put(0, hiveUserData);

      _log('User successfully logged in and saved in Hive.');

      emit(const AuthState.logInSuccess());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка входа: ${e.message}'));
      _log('LOGIN AUTH EXCEPTION: $e');
    } catch (e) {
      emit(AuthState.authError(errorText: 'Неизвестная ошибка входа: $e'));
      _log('UNHANDLED LOGIN ERROR: $e');
    }
  }

  Future<void> linkGoogleAccount() async {
    //TODO implement it
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final googleCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      await FirebaseAuth.instance.currentUser!
          .linkWithCredential(googleCredential);

      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        "authProvider": "google",
        "googleId": googleUser.id,
        "linkedAccounts": FieldValue.arrayUnion(["google"])
      });
    } catch (e) {
      _log("Failed to link Google account: $e");
    }
  }

  _deleteUser(DeleteUserEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final userData = HiveStore().getUserData();
    final userUID = userData!.uid;

    try {
      await auth.currentUser!.delete();
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userUID)
          .delete();
      emit(const AuthState.logOutSuccess());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.authError(
          errorText:
              'Ошибка: ${e.message}')); //TODO implement error and state handling
      _log('DELETION EXCEPTION: $e');
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED DELETION ERROR: $e');
    }

    // await auth.signOut();
  }

  _logOut(LogOutEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      // final userCredential =
      await auth.signOut();
      _log('User  signed out successfully');
      emit(const AuthState.logOutSuccess());
    } catch (e) {
      emit(AuthState.authError(errorText: 'Ошибка: $e'));
      _log('UNHANDLED AUTH LOG OUT ERROR: $e');
    }
  }

  _resetPassword(ResetPasswordEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.sendingCode());

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: event.email);
      _log('Password reset email sent');
      emit(AuthState.resetCodeSentSuccesfully(email: event.email));

      // Show success message to user
    } catch (e) {
      emit(const AuthState.resetCodeError());

      _log('Error sending password reset email: $e');
      // Show error message to user
    }
  }
}
