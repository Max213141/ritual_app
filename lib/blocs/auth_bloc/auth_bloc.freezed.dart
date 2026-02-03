// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateUserEvent value)?  createUser,TResult Function( LogInEvent value)?  logIn,TResult Function( SignInWithGoogle value)?  signInWithGoogle,TResult Function( DeleteUserEvent value)?  deleteUser,TResult Function( LogOutEvent value)?  logOut,TResult Function( ResetPasswordEvent value)?  resetPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateUserEvent() when createUser != null:
return createUser(_that);case LogInEvent() when logIn != null:
return logIn(_that);case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle(_that);case DeleteUserEvent() when deleteUser != null:
return deleteUser(_that);case LogOutEvent() when logOut != null:
return logOut(_that);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateUserEvent value)  createUser,required TResult Function( LogInEvent value)  logIn,required TResult Function( SignInWithGoogle value)  signInWithGoogle,required TResult Function( DeleteUserEvent value)  deleteUser,required TResult Function( LogOutEvent value)  logOut,required TResult Function( ResetPasswordEvent value)  resetPassword,}){
final _that = this;
switch (_that) {
case CreateUserEvent():
return createUser(_that);case LogInEvent():
return logIn(_that);case SignInWithGoogle():
return signInWithGoogle(_that);case DeleteUserEvent():
return deleteUser(_that);case LogOutEvent():
return logOut(_that);case ResetPasswordEvent():
return resetPassword(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateUserEvent value)?  createUser,TResult? Function( LogInEvent value)?  logIn,TResult? Function( SignInWithGoogle value)?  signInWithGoogle,TResult? Function( DeleteUserEvent value)?  deleteUser,TResult? Function( LogOutEvent value)?  logOut,TResult? Function( ResetPasswordEvent value)?  resetPassword,}){
final _that = this;
switch (_that) {
case CreateUserEvent() when createUser != null:
return createUser(_that);case LogInEvent() when logIn != null:
return logIn(_that);case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle(_that);case DeleteUserEvent() when deleteUser != null:
return deleteUser(_that);case LogOutEvent() when logOut != null:
return logOut(_that);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password,  String? username)?  createUser,TResult Function( String email,  String password)?  logIn,TResult Function()?  signInWithGoogle,TResult Function()?  deleteUser,TResult Function()?  logOut,TResult Function( String email)?  resetPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateUserEvent() when createUser != null:
return createUser(_that.email,_that.password,_that.username);case LogInEvent() when logIn != null:
return logIn(_that.email,_that.password);case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle();case DeleteUserEvent() when deleteUser != null:
return deleteUser();case LogOutEvent() when logOut != null:
return logOut();case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that.email);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password,  String? username)  createUser,required TResult Function( String email,  String password)  logIn,required TResult Function()  signInWithGoogle,required TResult Function()  deleteUser,required TResult Function()  logOut,required TResult Function( String email)  resetPassword,}) {final _that = this;
switch (_that) {
case CreateUserEvent():
return createUser(_that.email,_that.password,_that.username);case LogInEvent():
return logIn(_that.email,_that.password);case SignInWithGoogle():
return signInWithGoogle();case DeleteUserEvent():
return deleteUser();case LogOutEvent():
return logOut();case ResetPasswordEvent():
return resetPassword(_that.email);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password,  String? username)?  createUser,TResult? Function( String email,  String password)?  logIn,TResult? Function()?  signInWithGoogle,TResult? Function()?  deleteUser,TResult? Function()?  logOut,TResult? Function( String email)?  resetPassword,}) {final _that = this;
switch (_that) {
case CreateUserEvent() when createUser != null:
return createUser(_that.email,_that.password,_that.username);case LogInEvent() when logIn != null:
return logIn(_that.email,_that.password);case SignInWithGoogle() when signInWithGoogle != null:
return signInWithGoogle();case DeleteUserEvent() when deleteUser != null:
return deleteUser();case LogOutEvent() when logOut != null:
return logOut();case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class CreateUserEvent implements AuthEvent {
  const CreateUserEvent({required this.email, required this.password, required this.username});
  

 final  String email;
 final  String password;
 final  String? username;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserEventCopyWith<CreateUserEvent> get copyWith => _$CreateUserEventCopyWithImpl<CreateUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.username, username) || other.username == username));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,username);

@override
String toString() {
  return 'AuthEvent.createUser(email: $email, password: $password, username: $username)';
}


}

/// @nodoc
abstract mixin class $CreateUserEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $CreateUserEventCopyWith(CreateUserEvent value, $Res Function(CreateUserEvent) _then) = _$CreateUserEventCopyWithImpl;
@useResult
$Res call({
 String email, String password, String? username
});




}
/// @nodoc
class _$CreateUserEventCopyWithImpl<$Res>
    implements $CreateUserEventCopyWith<$Res> {
  _$CreateUserEventCopyWithImpl(this._self, this._then);

  final CreateUserEvent _self;
  final $Res Function(CreateUserEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? username = freezed,}) {
  return _then(CreateUserEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class LogInEvent implements AuthEvent {
  const LogInEvent({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogInEventCopyWith<LogInEvent> get copyWith => _$LogInEventCopyWithImpl<LogInEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogInEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.logIn(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LogInEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LogInEventCopyWith(LogInEvent value, $Res Function(LogInEvent) _then) = _$LogInEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LogInEventCopyWithImpl<$Res>
    implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(this._self, this._then);

  final LogInEvent _self;
  final $Res Function(LogInEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(LogInEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignInWithGoogle implements AuthEvent {
  const SignInWithGoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInWithGoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signInWithGoogle()';
}


}




/// @nodoc


class DeleteUserEvent implements AuthEvent {
  const DeleteUserEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.deleteUser()';
}


}




/// @nodoc


class LogOutEvent implements AuthEvent {
  const LogOutEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logOut()';
}


}




/// @nodoc


class ResetPasswordEvent implements AuthEvent {
  const ResetPasswordEvent({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventCopyWith<ResetPasswordEvent> get copyWith => _$ResetPasswordEventCopyWithImpl<ResetPasswordEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.resetPassword(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(ResetPasswordEvent value, $Res Function(ResetPasswordEvent) _then) = _$ResetPasswordEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._self, this._then);

  final ResetPasswordEvent _self;
  final $Res Function(ResetPasswordEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ResetPasswordEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _AuthLoadingState value)?  loading,TResult Function( _AuthSendingCodeState value)?  sendingCode,TResult Function( _AuthUserCreatedState value)?  userCreated,TResult Function( _AuthLogInSuccessState value)?  logInSuccess,TResult Function( _AuthLogOutSuccessState value)?  logOutSuccess,TResult Function( _AuthResetCodeSentSuccesfullyState value)?  resetCodeSentSuccesfully,TResult Function( _AuthResetCodeErrorState value)?  resetCodeError,TResult Function( _AuthErrorState value)?  authError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AuthLoadingState() when loading != null:
return loading(_that);case _AuthSendingCodeState() when sendingCode != null:
return sendingCode(_that);case _AuthUserCreatedState() when userCreated != null:
return userCreated(_that);case _AuthLogInSuccessState() when logInSuccess != null:
return logInSuccess(_that);case _AuthLogOutSuccessState() when logOutSuccess != null:
return logOutSuccess(_that);case _AuthResetCodeSentSuccesfullyState() when resetCodeSentSuccesfully != null:
return resetCodeSentSuccesfully(_that);case _AuthResetCodeErrorState() when resetCodeError != null:
return resetCodeError(_that);case _AuthErrorState() when authError != null:
return authError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _AuthLoadingState value)  loading,required TResult Function( _AuthSendingCodeState value)  sendingCode,required TResult Function( _AuthUserCreatedState value)  userCreated,required TResult Function( _AuthLogInSuccessState value)  logInSuccess,required TResult Function( _AuthLogOutSuccessState value)  logOutSuccess,required TResult Function( _AuthResetCodeSentSuccesfullyState value)  resetCodeSentSuccesfully,required TResult Function( _AuthResetCodeErrorState value)  resetCodeError,required TResult Function( _AuthErrorState value)  authError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _AuthLoadingState():
return loading(_that);case _AuthSendingCodeState():
return sendingCode(_that);case _AuthUserCreatedState():
return userCreated(_that);case _AuthLogInSuccessState():
return logInSuccess(_that);case _AuthLogOutSuccessState():
return logOutSuccess(_that);case _AuthResetCodeSentSuccesfullyState():
return resetCodeSentSuccesfully(_that);case _AuthResetCodeErrorState():
return resetCodeError(_that);case _AuthErrorState():
return authError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _AuthLoadingState value)?  loading,TResult? Function( _AuthSendingCodeState value)?  sendingCode,TResult? Function( _AuthUserCreatedState value)?  userCreated,TResult? Function( _AuthLogInSuccessState value)?  logInSuccess,TResult? Function( _AuthLogOutSuccessState value)?  logOutSuccess,TResult? Function( _AuthResetCodeSentSuccesfullyState value)?  resetCodeSentSuccesfully,TResult? Function( _AuthResetCodeErrorState value)?  resetCodeError,TResult? Function( _AuthErrorState value)?  authError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AuthLoadingState() when loading != null:
return loading(_that);case _AuthSendingCodeState() when sendingCode != null:
return sendingCode(_that);case _AuthUserCreatedState() when userCreated != null:
return userCreated(_that);case _AuthLogInSuccessState() when logInSuccess != null:
return logInSuccess(_that);case _AuthLogOutSuccessState() when logOutSuccess != null:
return logOutSuccess(_that);case _AuthResetCodeSentSuccesfullyState() when resetCodeSentSuccesfully != null:
return resetCodeSentSuccesfully(_that);case _AuthResetCodeErrorState() when resetCodeError != null:
return resetCodeError(_that);case _AuthErrorState() when authError != null:
return authError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  sendingCode,TResult Function( String email,  String password)?  userCreated,TResult Function( String email,  String password)?  logInSuccess,TResult Function()?  logOutSuccess,TResult Function( String email)?  resetCodeSentSuccesfully,TResult Function( String errorText)?  resetCodeError,TResult Function( String errorText)?  authError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AuthLoadingState() when loading != null:
return loading();case _AuthSendingCodeState() when sendingCode != null:
return sendingCode();case _AuthUserCreatedState() when userCreated != null:
return userCreated(_that.email,_that.password);case _AuthLogInSuccessState() when logInSuccess != null:
return logInSuccess(_that.email,_that.password);case _AuthLogOutSuccessState() when logOutSuccess != null:
return logOutSuccess();case _AuthResetCodeSentSuccesfullyState() when resetCodeSentSuccesfully != null:
return resetCodeSentSuccesfully(_that.email);case _AuthResetCodeErrorState() when resetCodeError != null:
return resetCodeError(_that.errorText);case _AuthErrorState() when authError != null:
return authError(_that.errorText);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  sendingCode,required TResult Function( String email,  String password)  userCreated,required TResult Function( String email,  String password)  logInSuccess,required TResult Function()  logOutSuccess,required TResult Function( String email)  resetCodeSentSuccesfully,required TResult Function( String errorText)  resetCodeError,required TResult Function( String errorText)  authError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _AuthLoadingState():
return loading();case _AuthSendingCodeState():
return sendingCode();case _AuthUserCreatedState():
return userCreated(_that.email,_that.password);case _AuthLogInSuccessState():
return logInSuccess(_that.email,_that.password);case _AuthLogOutSuccessState():
return logOutSuccess();case _AuthResetCodeSentSuccesfullyState():
return resetCodeSentSuccesfully(_that.email);case _AuthResetCodeErrorState():
return resetCodeError(_that.errorText);case _AuthErrorState():
return authError(_that.errorText);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  sendingCode,TResult? Function( String email,  String password)?  userCreated,TResult? Function( String email,  String password)?  logInSuccess,TResult? Function()?  logOutSuccess,TResult? Function( String email)?  resetCodeSentSuccesfully,TResult? Function( String errorText)?  resetCodeError,TResult? Function( String errorText)?  authError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AuthLoadingState() when loading != null:
return loading();case _AuthSendingCodeState() when sendingCode != null:
return sendingCode();case _AuthUserCreatedState() when userCreated != null:
return userCreated(_that.email,_that.password);case _AuthLogInSuccessState() when logInSuccess != null:
return logInSuccess(_that.email,_that.password);case _AuthLogOutSuccessState() when logOutSuccess != null:
return logOutSuccess();case _AuthResetCodeSentSuccesfullyState() when resetCodeSentSuccesfully != null:
return resetCodeSentSuccesfully(_that.email);case _AuthResetCodeErrorState() when resetCodeError != null:
return resetCodeError(_that.errorText);case _AuthErrorState() when authError != null:
return authError(_that.errorText);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _AuthLoadingState implements AuthState {
  const _AuthLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _AuthSendingCodeState implements AuthState {
  const _AuthSendingCodeState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSendingCodeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.sendingCode()';
}


}




/// @nodoc


class _AuthUserCreatedState implements AuthState {
  const _AuthUserCreatedState({this.email = '', this.password = ''});
  

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
@JsonKey() final  String email;
@JsonKey() final  String password;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserCreatedStateCopyWith<_AuthUserCreatedState> get copyWith => __$AuthUserCreatedStateCopyWithImpl<_AuthUserCreatedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUserCreatedState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthState.userCreated(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthUserCreatedStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthUserCreatedStateCopyWith(_AuthUserCreatedState value, $Res Function(_AuthUserCreatedState) _then) = __$AuthUserCreatedStateCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$AuthUserCreatedStateCopyWithImpl<$Res>
    implements _$AuthUserCreatedStateCopyWith<$Res> {
  __$AuthUserCreatedStateCopyWithImpl(this._self, this._then);

  final _AuthUserCreatedState _self;
  final $Res Function(_AuthUserCreatedState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_AuthUserCreatedState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthLogInSuccessState implements AuthState {
  const _AuthLogInSuccessState({this.email = '', this.password = ''});
  

// @Default(Playlist(name: '', tracks: [])) Playlist playlist,
@JsonKey() final  String email;
@JsonKey() final  String password;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthLogInSuccessStateCopyWith<_AuthLogInSuccessState> get copyWith => __$AuthLogInSuccessStateCopyWithImpl<_AuthLogInSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLogInSuccessState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthState.logInSuccess(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthLogInSuccessStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthLogInSuccessStateCopyWith(_AuthLogInSuccessState value, $Res Function(_AuthLogInSuccessState) _then) = __$AuthLogInSuccessStateCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$AuthLogInSuccessStateCopyWithImpl<$Res>
    implements _$AuthLogInSuccessStateCopyWith<$Res> {
  __$AuthLogInSuccessStateCopyWithImpl(this._self, this._then);

  final _AuthLogInSuccessState _self;
  final $Res Function(_AuthLogInSuccessState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_AuthLogInSuccessState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthLogOutSuccessState implements AuthState {
  const _AuthLogOutSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLogOutSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.logOutSuccess()';
}


}




/// @nodoc


class _AuthResetCodeSentSuccesfullyState implements AuthState {
  const _AuthResetCodeSentSuccesfullyState({this.email = ''});
  

@JsonKey() final  String email;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResetCodeSentSuccesfullyStateCopyWith<_AuthResetCodeSentSuccesfullyState> get copyWith => __$AuthResetCodeSentSuccesfullyStateCopyWithImpl<_AuthResetCodeSentSuccesfullyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResetCodeSentSuccesfullyState&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthState.resetCodeSentSuccesfully(email: $email)';
}


}

/// @nodoc
abstract mixin class _$AuthResetCodeSentSuccesfullyStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthResetCodeSentSuccesfullyStateCopyWith(_AuthResetCodeSentSuccesfullyState value, $Res Function(_AuthResetCodeSentSuccesfullyState) _then) = __$AuthResetCodeSentSuccesfullyStateCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$AuthResetCodeSentSuccesfullyStateCopyWithImpl<$Res>
    implements _$AuthResetCodeSentSuccesfullyStateCopyWith<$Res> {
  __$AuthResetCodeSentSuccesfullyStateCopyWithImpl(this._self, this._then);

  final _AuthResetCodeSentSuccesfullyState _self;
  final $Res Function(_AuthResetCodeSentSuccesfullyState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_AuthResetCodeSentSuccesfullyState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthResetCodeErrorState implements AuthState {
  const _AuthResetCodeErrorState({this.errorText = 'Password reset link not sent \n Please try again later'});
  

@JsonKey() final  String errorText;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResetCodeErrorStateCopyWith<_AuthResetCodeErrorState> get copyWith => __$AuthResetCodeErrorStateCopyWithImpl<_AuthResetCodeErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResetCodeErrorState&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,errorText);

@override
String toString() {
  return 'AuthState.resetCodeError(errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class _$AuthResetCodeErrorStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthResetCodeErrorStateCopyWith(_AuthResetCodeErrorState value, $Res Function(_AuthResetCodeErrorState) _then) = __$AuthResetCodeErrorStateCopyWithImpl;
@useResult
$Res call({
 String errorText
});




}
/// @nodoc
class __$AuthResetCodeErrorStateCopyWithImpl<$Res>
    implements _$AuthResetCodeErrorStateCopyWith<$Res> {
  __$AuthResetCodeErrorStateCopyWithImpl(this._self, this._then);

  final _AuthResetCodeErrorState _self;
  final $Res Function(_AuthResetCodeErrorState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorText = null,}) {
  return _then(_AuthResetCodeErrorState(
errorText: null == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthErrorState implements AuthState {
  const _AuthErrorState({this.errorText = 'Authication error \n Please try again'});
  

@JsonKey() final  String errorText;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthErrorStateCopyWith<_AuthErrorState> get copyWith => __$AuthErrorStateCopyWithImpl<_AuthErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthErrorState&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,errorText);

@override
String toString() {
  return 'AuthState.authError(errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class _$AuthErrorStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthErrorStateCopyWith(_AuthErrorState value, $Res Function(_AuthErrorState) _then) = __$AuthErrorStateCopyWithImpl;
@useResult
$Res call({
 String errorText
});




}
/// @nodoc
class __$AuthErrorStateCopyWithImpl<$Res>
    implements _$AuthErrorStateCopyWith<$Res> {
  __$AuthErrorStateCopyWithImpl(this._self, this._then);

  final _AuthErrorState _self;
  final $Res Function(_AuthErrorState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorText = null,}) {
  return _then(_AuthErrorState(
errorText: null == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
