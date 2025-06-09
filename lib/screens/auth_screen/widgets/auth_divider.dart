import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return Row(
      children: [
        const Expanded(
            child: Divider(
          thickness: 1,
          color: Colors.white,
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(l10n.or),
        ),
        const Expanded(
            child: Divider(
          thickness: 1,
          color: Colors.white,
        )),
      ],
    );
  }
}
