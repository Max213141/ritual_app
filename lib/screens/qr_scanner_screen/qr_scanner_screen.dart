import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import 'package:get_it/get_it.dart';

import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/qr_scanner_screen/widgets/widgets.dart';
import 'package:ritual_app/services/permission/permission_service.dart';
// import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';

// void _log(dynamic message) =>
//     Logger.helpPayLog(message, name: 'qr_scan_screen');

class QrScanScreen extends StatefulWidget {
  const QrScanScreen({
    super.key,
  });

  @override
  _QrScanScreenState createState() => _QrScanScreenState();
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
  Widget build(BuildContext context) => BlocBuilder<QrCamBloc, QrCamState>(
        builder: (context, state) {
          //Widget body = Container();
          // final isPermissionGranted = state is QrCamPermissionGranted;

          return Scaffold(
            // backgroundColor: Colors.black,
            backgroundColor: Colors.black,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () => GoRouter.of(context).go('/home'),
                icon: const RitualAppSvgPicture(
                  picture: 'assets/icons/close.svg',
                  fit: BoxFit.contain,
                ),
              ),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              actions: [
                // if (isPermissionGranted)
                FlashButton(
                  cameraController: _cameraController,
                ),
                // TextButton(
                //   onPressed: () => _qrParse(
                //       'https://pay.raschet.by/#00020132320010by.raschet0107466579110032715303933540511.415802BY5911UNP_46657916007Belarus6304A57C'),
                //   child: Icon(
                //     Icons.done,
                //     color: isPermissionGranted
                //         ? Colors.white
                //         : AppStyles.mainColorDark,
                //   ),
                // )
              ],
            ),
            body: QrCamWidget(
              cameraController: _cameraController,
              onScan: _qrParse,
            ),
          );
        },
      );

  // ignore: avoid_void_async
  void _qrParse(String qrString) async {
    await _cameraController.stop();
    try {
      // final resultUrl = qrString.split(',').firstWhere((element) => element.contains('https'));
      // final data = QrErip.parse(resultUrl);

      // Navigator.pop<QrEripData>(context, data);
    } catch (e) {
      // await Multiplatform.showMessage(
      //   context: context,
      //   title: context.t.mobileScreens.qrScan.modal.error.title,
      //   message: context.t.mobileScreens.qrScan.modal.error.message(error: e),
      // );
    }
    await _cameraController.start();
  }
}
