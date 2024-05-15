import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class PermissionDialogWidget extends StatelessWidget {
  final VoidCallback onConfirm;
  final String title;
  final String subtitle;

  const PermissionDialogWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.5,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_rounded,
              //color: AppColor.primaryBackgroundColor,
              size: 50.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Flexible(
              child: Text(
                title,
                style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Flexible(
              child: Text(
                subtitle,
                style: MentalHealthTextStyles.text.signikaSecondaryFontF16FW300,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onConfirm,
                  style: ElevatedButton.styleFrom(
                    //backgroundColor: AppColor.primaryBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(100.0, 50.0),
                  ),
                  child: Text(
                    l10n.ok,
                    style: MentalHealthTextStyles
                        .text.signikaSecondaryFontF16FW300,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    //backgroundColor: AppColor.primaryBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(100.0, 50.0),
                  ),
                  child: Text(
                    l10n.yes,
                    style: MentalHealthTextStyles
                        .text.signikaSecondaryFontF16FW300,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class AppAlertDialog extends StatelessWidget {
//   final Function onConfirm;
//   final String title;
//   final String subtitle;

//   const AppAlertDialog({
//     required this.onConfirm,
//     required this.title,
//     required this.subtitle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text(title),
//       content: Text(subtitle),
//       actions: [
//         ElevatedButton(
//           onPressed: () => onConfirm(),
//           child: const Text('Confirm'),
//         ),
//         ElevatedButton(
//           onPressed: () => Navigator.of(context).pop(),
//           child: const Text('Cancel'),
//         ),
//       ],
//     );
//   }
// }