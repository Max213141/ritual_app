import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class SuccessDialogWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final VoidCallback onPressed;

  const SuccessDialogWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: theme.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            if (subtitle != null)
              Text(
                subtitle!,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            // const SizedBox(
            //   height: 80,
            //   child: RitualAppSvgPicture(
            //     picture: 'assets/images/password_reset_sent.svg',
            //     fit: BoxFit.contain,
            //   ),
            // ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  l10n.ok,
                  style:
                      theme.textTheme.labelLarge?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
