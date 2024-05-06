import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/utils/utils.dart';

class DrawerItemWidget extends StatelessWidget {
  final DrawerItem item;
  const DrawerItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.7 - 16;
    return GestureDetector(
      onTap: item.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 12,
        ),
        child: SizedBox(
          height: 30,
          width: width,
          child: Row(
            children: [
              RitualAppSvgPicture(
                picture: item.icon,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(width: 6),
              Text(
                item.title,
                style: MentalHealthTextStyles.text.popinsSecondaryFontF16FW300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
