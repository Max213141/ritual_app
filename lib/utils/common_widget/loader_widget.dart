import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class Loader extends StatelessWidget {
  final double size;
  final Color color;
  final String message;

  const Loader({
    super.key,
    this.size = 50,
    this.color = AppColor.primaryColor,
    this.message = '',
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          color: Theme.of(context).primaryColorLight.withValues(alpha: .9)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
