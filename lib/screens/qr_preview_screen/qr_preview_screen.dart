import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';

class QrPreviewScreen extends StatefulWidget {
  final String memoryDeskId;

  const QrPreviewScreen({
    super.key,
    required this.memoryDeskId,
  });

  @override
  State<QrPreviewScreen> createState() => _QrPreviewScreenState();
}

class _QrPreviewScreenState extends State<QrPreviewScreen> {
  @protected
  late final QrImage _qrImage;
  @protected
  late final PrettyQrDecoration _decoration;

  @override
  void initState() {
    super.initState();

    final code = QrCode.fromData(
      data: widget.memoryDeskId,
      errorCorrectLevel: QrErrorCorrectLevel.H,
    );

    _qrImage = QrImage(code);

    _decoration = const PrettyQrDecoration(
      background: Colors.white,
      quietZone: PrettyQrQuietZone.zero,
      image: PrettyQrDecorationImage(
        image: AssetImage(
            'assets/icons/logo_icon_bl.png'), // make sure this path exists
        position: PrettyQrDecorationImagePosition.embedded,
        filterQuality: FilterQuality.high,
        scale: .15,
      ),
    );
  }

  Future<void> _downloadQrCode() async {
    final mediaService = getIt<MediaServiceInterface>();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool success = await mediaService.saveQrImage(
        qrImage: _qrImage,
        decoration: _decoration,
        size: 512,
      );
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success
                ? 'QR Code saved to gallery'
                : 'Failed to save QR Code, \n please check permissions',
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('QR - code'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Here is your QR code that can be\nused to access the memory page:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: theme.primaryColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: PrettyQrView(
                  qrImage: _qrImage,
                  decoration: _decoration,
                ),
              ),
            ),
            const SizedBox(height: 32),
            const SizedBox(height: 32),
            ActionButton(
              title: 'Download',
              onPressed: _downloadQrCode,
            ),
          ],
        ),
      ),
    );
  }
}
