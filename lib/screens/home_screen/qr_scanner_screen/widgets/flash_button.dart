import 'package:flutter/material.dart';

import 'package:mobile_scanner/mobile_scanner.dart';

class FlashButton extends StatelessWidget {
  final MobileScannerController cameraController;

  const FlashButton({
    super.key,
    required this.cameraController,
  });

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: ValueNotifier<bool>(cameraController.torchEnabled),
        builder: (context, state, child) {
          if (state == TorchState.on) {
            return IconButton(
              icon: const Icon(
                Icons.flash_off,
                color: Colors.white,
              ),
              tooltip: 'Turn on',
              onPressed: cameraController.toggleTorch,
            );
          } else {
            return IconButton(
              icon: const Icon(
                Icons.flash_on,
                color: Colors.white,
              ),
              tooltip: 'Turn off',
              onPressed: cameraController.toggleTorch,
            );
          }
        },
      );
}
