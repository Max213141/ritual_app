import 'package:flutter/material.dart';
import 'package:ritual_app/utils/common_widget/widgets.dart';

class MediaPickerFrameWidget extends StatelessWidget {
  final String icon;
  final Future<void> Function() onPressed;
  const MediaPickerFrameWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColorLight;
    return GestureDetector(
      onTap: () async {
        await onPressed();
      },
      child: SizedBox(
        width: 115,
        height: 145,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: RitualAppSvgPicture(picture: icon),
            ),
          ),
        ),
      ),
    );
  }
}
