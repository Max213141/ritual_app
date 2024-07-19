import 'package:flutter/material.dart';

import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ritual_app/utils/utils.dart';

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
              icon: const Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 43,
                  width: 43,
                  child: RitualAppSvgPicture(
                    picture: 'assets/icons/torch_off_icon.svg',
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Theme.of(context).primaryColorLight,
              ),
              tooltip: 'Turn on',
              onPressed: cameraController.toggleTorch,
            );
          } else {
            return IconButton(
              icon: const SizedBox(
                height: 75,
                width: 75,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Center(
                    child: RitualAppSvgPicture(
                      picture: 'assets/icons/torch_off_icon.svg',
                    ),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                // padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Theme.of(context).primaryColorLight,
              ),
              tooltip: 'Turn on',
              onPressed: cameraController.toggleTorch,
            );
          }
        },
      );
}
