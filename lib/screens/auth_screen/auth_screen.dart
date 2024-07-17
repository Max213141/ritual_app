import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/auth_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _showLoader = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () => setState(() {
            _showLoader = true;
          }),
          logInSuccess: (email, password) {
            setState(() {
              _showLoader = false;
            });
            GoRouter.of(context).go('/home');
          },
          authError: (errorText) {
            setState(() {
              _showLoader = false;
            });
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ErrorDialogWidget(
                  message: errorText,
                );
              },
            );
          },
        );
      },
      child: AuthScreenBody(
        showLoader: _showLoader,
      ),
    );
  }
}
