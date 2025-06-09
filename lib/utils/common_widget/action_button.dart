import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final double? width;
  final Color? buttonColor;
  final bool? buttonSelected;
  // final BuildContext context;
  final void Function() onPressed;

  const ActionButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    this.buttonColor,
    this.buttonSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width - 90,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.white,
        ),
        child: Text(
          title,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          // style: MentalHealthTextStyles.text.signikaPrimaryFontF22Black,
        ),
      ),
    );
  }
}
