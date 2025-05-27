import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_view_screen/widgets/widgets.dart';

class MemoryPageViewScreen extends StatelessWidget {
  final MemoryDesk memoryPage;
  const MemoryPageViewScreen({super.key, required this.memoryPage});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? const MemoryPageWebBodyWidget()
        : MemoryPageMobileBodyWidget(memoryPageData: memoryPage);
  }
}
