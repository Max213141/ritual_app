import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_desk_view_screen/widgets/widgets.dart';
import 'package:ritual_app/screens/memory_page_preview_screen/widgets/circle_border.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryDeskViewBody extends StatefulWidget {
  final AppLocalizations l10n;
  final MemoryDesk memoryDesk;
  final String id;

  const MemoryDeskViewBody({
    super.key,
    required this.memoryDesk,
    required this.id,
    required this.l10n,
  });

  @override
  State<MemoryDeskViewBody> createState() => _MemoryDeskViewBodyState();
}

class _MemoryDeskViewBodyState extends State<MemoryDeskViewBody> {
  int _selectedTabIndex = 0;
  late List<String> _tabs;
  @override
  void initState() {
    _tabs = [
      widget.l10n.mdScreenBiography,
      widget.l10n.mdScreenPhoto,
      widget.l10n.mdScreenVideo
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final memoryDesk = widget.memoryDesk;
    final fullName =
        '${memoryDesk.firstName.isEmpty ? '' : memoryDesk.firstName} ${memoryDesk.middleName.isEmpty ? '' : memoryDesk.middleName}\n${memoryDesk.lastName.isEmpty ? '' : memoryDesk.lastName}';

    final dateRange =
        '${memoryDesk.dateOfBirth.isEmpty ? '?' : memoryDesk.dateOfBirth}'
        ' – '
        '${memoryDesk.dateOfDeath.isEmpty ? '?' : memoryDesk.dateOfDeath}';

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: CustomPaint(
                    // Size of the half-circle, half the size of the image
                    size: const Size(150, 150),
                    painter: HalfCirclePainter(),
                  ),
                ),
                // CircleAvatar for the image
                Positioned(
                  child: Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: memoryDesk.photoUrl != null
                          ? NetworkImage(memoryDesk.photoUrl!)
                          : null, //TODO it doesn't saving and loading on proper path
                      child: memoryDesk.photoUrl == null
                          ? Icon(Icons.person,
                              size: 60, color: Colors.grey[600])
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            fullName.isNotEmpty ? fullName : 'Без имени',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            dateRange,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),

          if (memoryDesk.epitaphy.isNotEmpty) ...[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                memoryDesk.epitaphy,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
          ],

          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Divider(
              thickness: 2,
            ),
          ),
          const SizedBox(height: 24),

          // Tab bar
          PreviewTabBarWidget(
            tabs: _tabs,
            selectedIndex: _selectedTabIndex,
            onTap: (i) => setState(
              () => _selectedTabIndex = i,
            ),
          ),

          // Tab content
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: _buildTabContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent() {
    final biography = widget.memoryDesk.biography;

    switch (_selectedTabIndex) {
      case 0:
        return PreviewBiographyWidget(
          biography: biography.isEmpty
              ? widget.l10n.mdScreenBiographyEmpty
              : biography,
        );
      case 1:
        return PhotoTabWidget(
          photoUrls: widget.memoryDesk.photoUrls,
        );
      case 2:
        return VideoTabWidget(
          videoUrls: widget.memoryDesk.videoUrls,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
