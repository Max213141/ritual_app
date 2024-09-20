import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/screens/plan_selection_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/common_widget/widgets.dart';

class PlanSelectionScreen extends StatefulWidget {
  const PlanSelectionScreen({super.key});

  @override
  _PlanSelectionScreenState createState() => _PlanSelectionScreenState();
}

class _PlanSelectionScreenState extends State<PlanSelectionScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Choose your plan',
            style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: SizedBox(
                          width: constraints.maxWidth,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              3,
                              (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: PlanCardWidget(
                                  isSelected: selectedIndex == index,
                                  onTap: () => selectPlan(index),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ActionButton(
                      onPressed: () {
                        selectedIndex != -1
                            ? GoRouter.of(context)
                                .go('/home/mp_plan_selection/mp_creation')
                            : null;
                      },
                      title: 'Confirm',
                      width: width - 32,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void selectPlan(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
