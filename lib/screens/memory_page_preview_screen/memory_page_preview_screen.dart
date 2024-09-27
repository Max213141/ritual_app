import 'package:flutter/material.dart';
import 'package:ritual_app/screens/memory_page_preview_screen/widgets/widgets.dart';

class MemoryPagePreviewScreen extends StatefulWidget {
  const MemoryPagePreviewScreen({super.key});

  @override
  State<MemoryPagePreviewScreen> createState() =>
      _MemoryPagePreviewScreenState();
}

class _MemoryPagePreviewScreenState extends State<MemoryPagePreviewScreen> {
  int _selectedTabIndex = 0;
  final List<String> _tabs = ['Биография', 'Фото', 'Видео'];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
          // ... (previous AppBar code)
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // CircleAvatar for the image
                CircleAvatar(
                  radius: 60, // Size of the image circle
                  backgroundColor: Colors.grey[800],
                ),
                // Add CustomPaint as the arc below the avatar
                Positioned(
                  // Adjust position to ensure it's properly placed around the bottom
                  bottom: -10,
                  child: CustomPaint(
                    // Size of the half-circle, half the size of the image
                    size: const Size(120, 60),
                    painter: HalfCirclePainter(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Роматова Мария\nАлександровна',
              textAlign: TextAlign.center,
              style: textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              '01.05.1970 - 03.08.2022',
              style: textTheme.headlineSmall?.copyWith(color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Любим тебя, и в памяти\nНашей всегда ты жива',
                textAlign: TextAlign.center,
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),
            const SizedBox(height: 24),
            // ... (previous content above tabs)
            PreviewTabBarWidget(
              tabs: _tabs,
              selectedIndex: _selectedTabIndex,
              onTap: (index) {
                setState(() {
                  _selectedTabIndex = index;
                });
              },
            ),
            // Content based on selected tab
            _buildTabContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0:
        return const PreviewBiographyWidget();
      case 1:
        return _buildPhotoContent();
      case 2:
        return _buildVideoContent();
      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildPhotoContent() {
    // Implement photo gallery here
    return Center(child: Text('Photo gallery goes here'));
  }

  Widget _buildVideoContent() {
    // Implement video gallery here
    return Center(child: Text('Video gallery goes here'));
  }
}
