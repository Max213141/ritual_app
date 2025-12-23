import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/auth_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthScreenBody extends StatefulWidget {
  final bool showLoader;
  const AuthScreenBody({super.key, required this.showLoader});

  @override
  State<AuthScreenBody> createState() => _AuthScreenBodyState();
}

class _AuthScreenBodyState extends State<AuthScreenBody> {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late bool _switchedToRegister;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    _switchedToRegister = true;
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Scaffold(
      body: LoadingOverlay(
        isLoading: widget.showLoader,
        child: SafeArea(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.only(top: 65, left: 25, right: 25, bottom: 30),
            child: Form(
              key: formKey,
              child: SizedBox(
                height: MediaQuery.of(context).size.height -
                    95 -
                    MediaQuery.of(context).padding.bottom,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      _switchedToRegister
                          ? l10n.authRegistration
                          : l10n.welcomeSecond,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _switchedToRegister
                          ? l10n.authCreateAccount
                          : l10n.authLogIn,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          RepaintBoundary(
                            child: CustomFormFieldWidget(
                              controller: emailController,
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
                          const SizedBox(height: 25),

                          RepaintBoundary(
                            child: CustomFormFieldWidget(
                              controller: passwordController,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return l10n.authPasswordIsEmpty;
                                }
                                return null;
                              },
                              title: l10n.authPassword,
                              usepObscureText: true,
                            ),
                          ),
                          const SizedBox(height: 25),

                          if (!_switchedToRegister) ...[
                            GestureDetector(
                              onTap: () {
                                GoRouter.of(context)
                                    .go('/initial_page/auth_forgot_password');
                              },
                              child: Text(
                                l10n.authForgotPassword,
                                style: Theme.of(context).textTheme.bodySmall,
                                textAlign: TextAlign.right,
                              ),
                            ),
                            const SizedBox(height: 6),
                          ],
                          const SizedBox(height: 13),
                          if (_switchedToRegister) ...[
                            const AuthTermsWidget(),
                            const SizedBox(height: 16),
                          ] else
                            const SizedBox.shrink(),
                          // : const SizedBox.shrink(),

                          ActionButton(
                            title: _switchedToRegister
                                ? l10n.register
                                : l10n.logIn,
                            onPressed: () {
                              hideKeyBoard();

                              if (formKey.currentState!.validate()) {
                                final String email = emailController.text;
                                final String password = passwordController.text;

                                _switchedToRegister
                                    ? BlocProvider.of<AuthBloc>(context).add(
                                        CreateUserEvent(
                                            email: email,
                                            password: password,
                                            username:
                                                ')))' //TODO implement username field
                                            ),
                                      )
                                    : BlocProvider.of<AuthBloc>(context).add(
                                        LogInEvent(
                                          email: email,
                                          password: password,
                                        ),
                                      );
                              }
                            },
                          ),
                          const SizedBox(height: 16),
                          const AuthDivider(),
                          const SizedBox(height: 16),
                          // AuthButtonByDifferentMeans(
                          //   image: 'assets/icons/google_logo.svg',
                          //   authMean: l10n.authViaGoogle,
                          //   onPressed: () {
                          //     BlocProvider.of<AuthBloc>(context).add(
                          //       const SignInWithGoogle(),
                          //     );
                          //   },
                          // ),
                          // const SizedBox(height: 16),
                          // AuthButtonByDifferentMeans(
                          //   image: 'assets/icons/apple_logo.svg',
                          //   authMean: l10n.authViaApple,
                          //   onPressed: () {'
                          //     BlocProvider.of<AuthBloc>(context).add(
                          //       const SignInWithGoogle(),
                          //     );
                          //   },
                          // ),
                          Spacer(
                            flex: 1,
                          ),
                          GestureDetector(
                            onTap: () => setState(() {
                              _switchedToRegister = !_switchedToRegister;
                            }),
                            child: Column(
                              children: [
                                Text(
                                  _switchedToRegister
                                      ? l10n.accountExists
                                      : l10n.registerAccount,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  _switchedToRegister
                                      ? l10n.logIn
                                      : l10n.register,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
