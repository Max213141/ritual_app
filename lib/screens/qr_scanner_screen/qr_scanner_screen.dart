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
    return BlocBuilder<QrCamBloc, QrCamState>(
      builder: (context, state) {
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
          body: Padding(
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
          ),
        );
      },
    );
  }

  void _qrParse(String qrString) async {
    await _cameraController.stop();
    try {} catch (e) {}
    await _cameraController.start();
  }
}
