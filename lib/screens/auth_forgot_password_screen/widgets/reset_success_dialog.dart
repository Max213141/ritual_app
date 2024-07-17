import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class ResetSuccessDialogWidget extends StatelessWidget {
  final String email;

  const ResetSuccessDialogWidget({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  l10n.resetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  '${l10n.resetPasswordText}$email',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 6),
            const Expanded(
              child: RitualAppSvgPicture(
                picture: 'assets/images/password_reset_sent.svg',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 6),
            Column(
              children: [
                ActionButton(
                  onPressed: () {
                    // Add logic to check email or open email app
                  },
                  // style: ElevatedButton.styleFrom(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //   ),
                  //   minimumSize: const Size(double.infinity, 50.0),
                  // ),
                  title: l10n.resetPasswordCheckEmail,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(l10n.ok),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
