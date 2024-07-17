import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Text(
      l10n.introBeginButton,
    );
  }
}
