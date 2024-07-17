import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthButtonByDifferentMeans extends StatelessWidget {
  final String image;
  final String authMean;
  final VoidCallback onPressed;
  const AuthButtonByDifferentMeans({
    super.key,
    required this.image,
    required this.authMean,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: SizedBox(
        width: 36,
        height: 36,
        child: RitualAppSvgPicture(picture: image),
      ),
      label: Text(authMean),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
