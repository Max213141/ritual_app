import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/screens.dart';

class InitialPage extends StatelessWidget {
  final FirebaseAuth auth;
  const InitialPage({super.key, required this.auth});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: BlocProvider.of<AuthBloc>(context).auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //Uncomment for proper workflow
          return const MainScreen();
        }
        return const AuthScreen();
      },
    );
  }
}
