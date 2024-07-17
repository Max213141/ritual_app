import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return SizedBox(
      width: 150,
      child: Text(
        l10n.introSkipButton,
      ),
    );
  }
}
