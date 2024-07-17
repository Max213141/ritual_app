import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/auth_forgot_password_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthForgotPasswordScreen extends StatefulWidget {
  const AuthForgotPasswordScreen({super.key});

  @override
  State<AuthForgotPasswordScreen> createState() =>
      _AuthForgotPasswordScreenState();
}

class _AuthForgotPasswordScreenState extends State<AuthForgotPasswordScreen> {
  late bool _showLoader;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showLoader = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          sendingCode: () => setState(() {
            _showLoader = true;
          }),
          resetCodeSentSuccesfully: (email) {
            setState(() {
              _showLoader = false;
            });
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ResetSuccessDialogWidget(
                  email: email,
                );
              },
            );
          },
          resetCodeError: (errorText) {
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
      child: Stack(
        children: [
          AuthForgotPasswordBody(),
          if (_showLoader)
            const Center(
              child: SizedBox(
                height: 85,
                width: 85,
                child: RepaintBoundary(
                  child: Loader(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
