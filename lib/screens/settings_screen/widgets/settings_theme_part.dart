import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/utils/utils.dart';

class ThemeSettingsPart extends StatelessWidget {
  const ThemeSettingsPart({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final isDarkTheme = BlocProvider.of<ThemeBloc>(context).state.isDarkTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.settingsChangeTheme,
          style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: ActionButton(
                  onPressed: () {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(ChangeTheme(isDarkTheme: true));
                  },
                  title: l10n.settingsDarkTheme,
                  buttonSelected: isDarkTheme,
                  // StringMatchers.localeTitle(
                  //   context,
                  //   locale,
                  // ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: ActionButton(
                  onPressed: () {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(ChangeTheme(isDarkTheme: false));
                  },
                  title: l10n.settingsLightTheme,
                  buttonSelected: !isDarkTheme,
                  // StringMatchers.localeTitle(
                  //   context,
                  //   locale,
                  // ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
