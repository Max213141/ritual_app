import 'package:flutter/material.dart';
import 'package:ritual_app/screens/plan_selection_screen/widgets/widgets.dart';

class PlanCardWidget extends StatelessWidget {
  final bool isSelected;

  const PlanCardWidget({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.grey : Colors.transparent,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Basic',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const Text(
              '\$15',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'One off payment',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            PlanFeaturesWidget(
              text: 'Full Access to all features',
              isSelected: isSelected,
            ),
            PlanFeaturesWidget(
              text: 'Unlimited photo & video uploads',
              isSelected: isSelected,
            ),
          ],
        ),
      ),
    );
  }
}
