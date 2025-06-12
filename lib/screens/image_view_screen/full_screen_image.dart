import 'dart:io';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String imagePath; // can be file path or network URL

  const FullScreenImage.file(this.imagePath, {super.key});
  const FullScreenImage.network(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    final isNetwork = imagePath.startsWith('http');
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Center(
        child: isNetwork
            ? Image.network(imagePath, fit: BoxFit.contain)
            : Image.file(File(imagePath), fit: BoxFit.contain),
      ),
    );
  }
}
