import 'package:flutter/material.dart';
import 'package:ritual_app/screens/memory_page_preview_screen/widgets/widgets.dart';

class PreviewTabBarWidget extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final Function(int) onTap;

  const PreviewTabBarWidget({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(tabs.length, (index) {
        bool isSelected = index == selectedIndex;

        return GestureDetector(
          onTap: () => onTap(index),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: isSelected
                    ? BorderSide(color: Colors.grey[300]!, width: 1)
                    : BorderSide.none,
              ),
            ),
            child: PreviewTabWidget(
              isActive: isSelected,
              text: tabs[index],
            ),
          ),
        );
      }),
    );
  }
}
