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
    return Scaffold(
      appBar: AppBar(
          // ... (previous AppBar code)
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[300],
              // Add photo here if available
            ),
            const SizedBox(height: 16),
            const Text(
              'Романова Мария\nАлександровна',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '01.05.1970 - 03.08.2022',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Любим тебя, и в памяти\nНашей всегда ты жива',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey[600],
              ),
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
