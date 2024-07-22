import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/home_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryPageScreen extends StatelessWidget {
  const MemoryPageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final List<MemoryPage> memoryPages = [
      // MemoryPage(name: 'Романова Мария Александровна'),
      // MemoryPage(name: 'Кузнецов Михаил Павлович'),
      // MemoryPage(name: 'Соколова Екатерина Алексеевна'),
      // MemoryPage(name: 'Романова Мария Александровна'),
      // MemoryPage(name: 'Кузнецов Михаил Павлович'),
      // MemoryPage(name: 'Соколова Екатерина Алексеевна'),
    ];
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Height of a single list item
              const itemHeight = 120.0; // Adjust based on actual item height
              // Calculate total height needed for all items
              final listHeight = memoryPages.length * itemHeight;
              // Get the available screen height
              final maxScreenHeight = MediaQuery.of(context).size.height * 0.5;
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  memoryPages.isEmpty
                      ? Text(
                          l10n.memoryPageScreenEmpty,
                          textAlign: TextAlign.center,
                        )
                      : ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: constrainedHeight,
                            minHeight: 120,
                          ),
                          child: ListView.builder(
                            itemCount: memoryPages.length,
                            itemBuilder: (context, index) {
                              return MemoryPageItem(
                                memoryPage: memoryPages[index],
                              );
                            },
                          ),
                        ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        GoRouter.of(context).go('/home/mp_plan_selection');
                      },
                      child: Text(l10n.memoryPageScreenNew),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: deviceSize.width * .2,
        width: deviceSize.width * .2,
        child: FloatingActionButton(
          onPressed: () {
            GoRouter.of(context).go('/qr_scan');
          },
          child: const RitualAppSvgPicture(
            picture: 'assets/icons/qr_scan_icon.svg',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
