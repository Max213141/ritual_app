import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthForgotPasswordBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  AuthForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  l10n.authForgotPassword,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.authForgotPassword2,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                RepaintBoundary(
                  child: CustomFormFieldWidget(
                    controller: _emailController,
                    validator: (value) {
                      final RegExp emailRegExp = RegExp(
                          r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-zA-Z]{2,})$');
                      if (value?.isEmpty ?? true) {
                        return l10n.authEmailIsEmpty;
                      }
                      if (!emailRegExp.hasMatch(value!)) {
                        return l10n.authEmailInvalid;
                      }
                      return null;
                    },
                    title: l10n.authEmail,
                    usepObscureText: false,
                  ),
                ),
                const Spacer(),
                ActionButton(
                  title: l10n.authForgotPasswordRecover,
                  onPressed: () {
                    hideKeyBoard();
                    if (_formKey.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context).add(
                        ResetPasswordEvent(email: _emailController.text),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
