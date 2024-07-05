import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';

class MemoryPageItem extends StatelessWidget {
  final MemoryPage memoryPage;

  const MemoryPageItem({
    super.key,
    required this.memoryPage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Icon(Icons.person, color: Colors.grey[600]),
        ),
        title: Text(memoryPage.name),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
