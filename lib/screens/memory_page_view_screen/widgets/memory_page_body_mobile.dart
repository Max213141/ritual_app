import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ritual_app/screens/memory_page_preview_screen/widgets/widgets.dart';
import 'package:ritual_app/screens/memory_page_view_screen/widgets/widgets.dart';

class MemoryPageMobileBodyWidget extends StatefulWidget {
  const MemoryPageMobileBodyWidget({super.key});

  @override
  State<MemoryPageMobileBodyWidget> createState() =>
      _MemoryPageMobileBodyWidgetState();
}

class _MemoryPageMobileBodyWidgetState
    extends State<MemoryPageMobileBodyWidget> {
  int _selectedTabIndex = 0;
  final List<String> _tabs = ['Биография', 'Фото', 'Видео'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => () => GoRouter.of(context).go('/home'),
          child: Icon(Icons.arrow_back, color: Colors.grey[600]),
        ),
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
        return const PhotoTabWidget();
      case 2:
        return const VideoTabWidget();
      default:
        return const SizedBox.shrink();
    }
  }
}
