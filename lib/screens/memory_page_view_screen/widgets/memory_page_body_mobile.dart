import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';

class MemoryPageMobileBodyWidget extends StatefulWidget {
  final MemoryDesk memoryPageData;
  const MemoryPageMobileBodyWidget({
    super.key,
    required this.memoryPageData,
  });

  @override
  State<MemoryPageMobileBodyWidget> createState() =>
      _MemoryPageMobileBodyWidgetState();
}

class _MemoryPageMobileBodyWidgetState
    extends State<MemoryPageMobileBodyWidget> {
  int _selectedTabIndex = 0;
  final _tabs = ['Биография', 'Фото', 'Видео'];

  LocalMemoryPageMedia? _localMedia;

  @override
  void initState() {
    super.initState();
    _loadMedia();
  }

  Future<void> _loadMedia() async {
    final mediaService = getIt<MediaServiceInterface>();

    final media = await mediaService.downloadMediaFile(
      photoUrls: widget.memoryPageData.photoUrls,
      videoUrls: widget.memoryPageData.videoUrls,
    );
    setState(
      () => _localMedia = media,
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.memoryPageData;
    final fullName = [data.firstName, data.middleName, data.lastName]
        .where((s) => s.isNotEmpty)
        .join(' ');
    final dateRange = '${data.dateOfBirth.isEmpty ? '?' : data.dateOfBirth}'
        ' – '
        '${data.dateOfDeath.isEmpty ? '?' : data.dateOfDeath}';

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[600]),
          onPressed: () => GoRouter.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Avatar
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[300],
              backgroundImage:
                  data.photoUrl != null ? NetworkImage(data.photoUrl!) : null,
              child: data.photoUrl == null
                  ? Icon(Icons.person, size: 60, color: Colors.grey[600])
                  : null,
            ),

            const SizedBox(height: 16),
            // Name
            Text(
              fullName.isNotEmpty ? fullName : 'Без имени',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 8),
            // Dates
            Text(
              dateRange,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.grey[600]),
            ),

            if (data.epitaphy.isNotEmpty) ...[
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '"${data.epitaphy}"',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
            ],

            const SizedBox(height: 24),
            // Tab bar
            PreviewTabBarWidget(
              tabs: _tabs,
              selectedIndex: _selectedTabIndex,
              onTap: (i) => setState(() => _selectedTabIndex = i),
            ),

            // Tab content
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _buildTabContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    final biography = widget.memoryPageData.biography;

    switch (_selectedTabIndex) {
      case 0:
        return PreviewBiographyWidget(
            biography: biography.isEmpty ? 'Fill in biography' : biography);
      case 1:
        return PickedMediaList(
          mediaList: _localMedia?.photos ?? [],
          watchOnlyMode: true,
        );
      case 2:
        return PickedMediaList(
          mediaList: _localMedia?.videos ?? [],
          watchOnlyMode: true,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
