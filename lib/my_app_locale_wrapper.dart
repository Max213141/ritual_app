import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ritual_app/blocs/blocs.dart';

import 'utils/utils.dart';

class MyAppWrapper extends StatelessWidget {
  final Locale locale;
  final RouterConfig<Object>? router;
  const MyAppWrapper({
    super.key,
    required this.locale,
    this.router,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts

    TextTheme textTheme =
        createTextTheme(context, "Montserrat", "Montserrat Alternates");

    MaterialTheme theme = MaterialTheme(textTheme);

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          supportedLocales: AppConfig.supportedLocales,
          locale: locale,
          title: 'Memento',
          routerConfig: router,
          theme: brightness == Brightness.light ? theme.light() : theme.dark(),
          // state.isDarkTheme ? theme.light() : theme.dark(),
          // state.isDarkTheme ? darkTheme : lightTheme,
        );
      },
    );
  }
}
