import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(l10n.or),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
