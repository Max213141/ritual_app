import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ritual_app/screens/memory_page_view_screen/widgets/widgets.dart';

class MemoryPageViewScreen extends StatefulWidget {
  const MemoryPageViewScreen({super.key});

  @override
  State<MemoryPageViewScreen> createState() => _MemoryPageViewScreenState();
}

class _MemoryPageViewScreenState extends State<MemoryPageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? const MemoryPageWebBodyWidget()
        : const MemoryPageMobileBodyWidget();
  }
}
