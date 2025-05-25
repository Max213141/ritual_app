import 'package:flutter/material.dart';

class MediaTitleWidget extends StatelessWidget {
  final String title;
  final int overallNumber;
  const MediaTitleWidget({
    super.key,
    required this.title,
    required this.overallNumber,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: textTheme),
          Text('$overallNumber of 5', style: textTheme),
        ],
      ),
    );
  }
}
