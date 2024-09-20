import 'package:flutter/material.dart';
import 'package:ritual_app/screens/plan_selection_screen/widgets/widgets.dart';

class PlanCardWidget extends StatefulWidget {
  final bool isSelected;
  final VoidCallback onTap;
  const PlanCardWidget({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<PlanCardWidget> createState() => _PlanCardWidgetState();
}

class _PlanCardWidgetState extends State<PlanCardWidget> {
  @override
  Widget build(BuildContext context) {
    final double cardHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).viewPadding.top -
            MediaQuery.of(context).viewPadding.bottom) /
        3;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        // height: cardHeight,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(20),
          border: widget.isSelected
              ? Border.all(
                  color: Colors.white, // Change border color when selected
                  width: 2,
                )
              : Border.all(
                  color: Colors.transparent, // No border when not selected
                ),
        ),
        child: const Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Basic',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '\$15',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'One off payment',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            PlanFeaturesWidget(text: 'Full Access to all features'),
            SizedBox(height: 5),
            PlanFeaturesWidget(text: 'Unlimited photo & video uploads')
          ],
        ),
      ),
    );
  }
}
