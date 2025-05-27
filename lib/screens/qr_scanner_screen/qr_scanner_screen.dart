import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/qr_scanner_screen/widgets/widgets.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
import 'package:ritual_app/utils/utils.dart';

class QrScanScreen extends StatefulWidget {
  const QrScanScreen({
    super.key,
  });

  @override
  State<QrScanScreen> createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen> {
  late MobileScannerController _cameraController;
  late PermissionService permissionService;
  bool showAgreements = false;

  @override
  void initState() {
    BlocProvider.of<QrCamBloc>(context).add(const QrCamPermissionCheck());
    _cameraController = MobileScannerController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final color = Theme.of(context).primaryColorLight;

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton(
            onPressed: () => GoRouter.of(context).go('/home'),
            icon: RitualAppSvgPicture(
              picture: 'assets/icons/close.svg',
              fit: BoxFit.contain,
              color: color,
            ),
          ),
        ],
      ),
      body: BlocConsumer<QrCamBloc, QrCamState>(
        listener: (context, state) {
          if (state is QrCamMemoryDeskLoaded) {
            GoRouter.of(context).go(
              '/home/mp_view_screen/${state.memoryDeskId}',
              extra: state.memoryPage,
            );
          }
        },
        builder: (context, state) {
          Widget body = Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 60),
            child: Column(
              children: [
                Text(
                  l10n.qrScannerScreenQuote,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 18),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: QrCamWidget(
                        cameraController: _cameraController,
                        onScan: _qrParse,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                FlashButton(
                  cameraController: _cameraController,
                ),
              ],
            ),
          );

          if (state is QrCamPermissionPermamentlyDenied ||
              state is QrCamPermissionDenied) {
            body = Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                    'Please grant your pemisson in your settings to use QR scanner'),
              ),
            );
          }
          if (state is QrCamError) {
            body = Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('${state.error}'),
              ),
            );
          }

          return body;
        },
      ),
    );
  }

  // void _qrParse(String qrString, BuildContext context) async {
  //   // stop the camera to avoid duplicate scans while loading
  //   await _cameraController.stop();

  //   // fire the event to load from Firestore
  //   BlocProvider.of<QrCamBloc>(context).add(
  //     QrCamLoadMemoryDesk(memoryDeskId: qrString),
  //   );

  //   // note: you don’t need to restart the camera here,
  //   // the BlocListener’s navigation will take the user away.
  //   // If you want to resume scanning on error, do that in your
  //   // BlocConsumer listener or in the error state’s build.
  // }

  void _qrParse(String qrString, BuildContext context) async {
    // stop to prevent double-scans while we load
    await _cameraController.stop();

    // extract the ID from the "displayValue: XYZ" part
    final id = _extractDeskId(qrString);
    if (id == null) {
      // if we couldn’t find it, show an error or restart scanning
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Не удалось распознать QR-код')),
      );
      await _cameraController.start();
      return;
    }

    // dispatch the load
    BlocProvider.of<QrCamBloc>(context).add(
      QrCamLoadMemoryDesk(memoryDeskId: id),
    );
  }

// helper to grab that displayValue
  String? _extractDeskId(String raw) {
    final regex = RegExp(r'displayValue:\s*([^,\}]+)');
    final match = regex.firstMatch(raw);
    return match?.group(1)?.trim();
  }
}
