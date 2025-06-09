import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/db_entities/db_entities.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryDesksListScreenBody extends StatelessWidget {
  final AppLocalizations l10n;
  final List<MemoryDesk> memoryDesks;
  final List<String> memoryDeskIds;
  const MemoryDesksListScreenBody({
    super.key,
    required this.l10n,
    required this.memoryDesks,
    required this.memoryDeskIds,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Height of a single list item
        const itemHeight = 120.0; // Adjust based on actual item height
        // Calculate total height needed for all items
        final listHeight = memoryDesks.length * itemHeight;
        // Get the available screen height
        final maxScreenHeight = MediaQuery.of(context).size.height * 0.55;
        // Use the minimum of calculated list height and max screen height
        final constrainedHeight =
            listHeight < maxScreenHeight ? listHeight : maxScreenHeight;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              l10n.memoryPageScreenTitle,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            memoryDesks.isEmpty
                ? Text(
                    l10n.memoryPageScreenEmpty,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: constrainedHeight,
                      minHeight: 120,
                    ),
                    child: ListView.builder(
                      itemCount: memoryDesks.length,
                      itemBuilder: (context, index) {
                        return MemoryPageItem(
                          memoryDesk: memoryDesks[index],
                          memoryDeskId: memoryDeskIds[index],
                        );
                      },
                    ),
                  ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () async {
                  await GoRouter.of(context)
                      .push<bool>('/home/mp_plan_selection');
                },
                child: Text(
                  l10n.memoryPageScreenNew,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
