import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class SocialsButton extends StatelessWidget {
  final VoidCallback onTap;
  final String picturePath;
  const SocialsButton({
    super.key,
    required this.onTap,
    required this.picturePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 40,
        width: 40,
        child: RitualAppSvgPicture(
          picture: picturePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
