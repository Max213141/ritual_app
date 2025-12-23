import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) => Logger.projectLog(message, name: 'qr_cam');

class QrCamWidget extends StatefulWidget {
  final MobileScannerController cameraController;
  final Function(String scanData, BuildContext context) onScan;

  const QrCamWidget({
    super.key,
    required this.cameraController,
    required this.onScan,
  });

  @override
  State<QrCamWidget> createState() => _QrCamWidgetState();
}

class _QrCamWidgetState extends State<QrCamWidget> {
  @override
  void dispose() {
    widget.cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<QrCamBloc, QrCamState>(
        listener: (context, state) async {},
        builder: (context, state) {
          Widget body = const SizedBox();
          if (state is QrCamLoading) {
            body = const Center(
              child: SizedBox(
                height: 85,
                width: 85,
                child: RepaintBoundary(child: Loader()),
              ),
            );
          }
          if (state is QrCamPermissionDenied) {
            body = SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Denied',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    MaterialButton(
                      onPressed: () => context
                          .read<QrCamBloc>()
                          .add(const QrCamPermissionCheck()),
                      child: const Text('Need permission'),
                    )
                  ],
                ),
              ),
            );
          }
          if (state is QrCamPermissionPermamentlyDenied) {
            body = const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Permanently denied',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }
          if (state is QrCamPermissionGranted) {
            body = Stack(
              children: [
                MobileScanner(
                  // allowDuplicates: false,
                  controller: widget.cameraController,
                  onDetect: _onDetect,
                ),

                // SafeArea(
                //   child: Container(
                //     padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                //     alignment: Alignment.topCenter,
                //     child: const Text(
                //       'Scan IT',
                //       style: TextStyle(color: Colors.white, fontSize: 22),
                //     ),
                //   ),
                // )
              ],
            );
          }
          return body;
        },
      );

  void _onDetect(
    BarcodeCapture barcode,
  ) {
    _log('barCode - ${barcode.raw}');
    if (barcode.raw != null) {
      widget.onScan(barcode.raw!.toString(), context);
    }
  }
}
