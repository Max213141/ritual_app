// lib/screens/memory_page_creation_screen/widgets/loading_overlay.dart

import 'package:flutter/material.dart';
import 'package:ritual_app/utils/common_widget/widgets.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const LoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          const Positioned(
            child: ColoredBox(
              color: Colors.black38,
              child: Center(
                child: Loader(),
              ),
            ),
          ),
      ],
    );
  }
}
