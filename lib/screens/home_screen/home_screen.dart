import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritual_app/screens/home_screen/avatar_container.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';
import 'package:ritual_app/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    final MediaServiceInterface _mediaService = getIt<MediaServiceInterface>();

    File? imageFile;
    bool isLoadingGettingImage = false;

    Future getImage(AppImageSource appImageSource) async {
      setState(() => isLoadingGettingImage = true);
      final pickedImageFile =
          await _mediaService.uploadImage(context, appImageSource);
      setState(() => isLoadingGettingImage = false);

      if (pickedImageFile != null) {
        setState(() => imageFile = pickedImageFile);
      }
    }

    // Future<AppImageSource?> _pickImageSource() async {
    //   AppImageSource? _appImageSource = await showCupertinoModalPopup(
    //     context: context,
    //     builder: (BuildContext context) => ImagePickerActionSheet(),
    //   );
    //   if (_appImageSource != null) {
    //     _getImage(_appImageSource);
    //   }
    // }

    return Center(
      child: Column(
        children: [
          AvatarContainer(
            isLoading: isLoadingGettingImage,
            onTap: () => getImage(AppImageSource.gallery),
            imageFile: imageFile,
          ),
          const SizedBox(
            height: 10,
          ),
          ActionButton(
            title: 'Get Media',
            onPressed: () => getImage(AppImageSource.gallery),
          ),
          imageFile == null
              ? SizedBox.shrink()
              : Image.file(
                  imageFile!,
                  height: 150,
                  width: 150,
                )
        ],
      ),
    );
    // Center(
    //   child: ScrollConfiguration(
    //     behavior: CustomBehavior(),
    //     child: SingleChildScrollView(
    //       child: Column(
    //         // mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           SizedBox(
    //             width: MediaQuery.of(context).size.width,
    //             child: DecoratedBox(
    //               decoration: const BoxDecoration(
    //                   //color: //AppColor.primaryColor,
    //                   ),
    //               child: SizedBox(
    //                 height: 30,
    //                 // MediaQuery.of(context).size.height / 6,
    //                 child: DecoratedBox(
    //                   decoration: const BoxDecoration(
    //                     //color: //AppColor.primaryBackgroundColor,
    //                     borderRadius: BorderRadius.only(
    //                       bottomLeft: Radius.circular(40),
    //                     ),
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.only(
    //                       left: 18.0,
    //                       bottom: 6,
    //                     ),
    //                     child: Text(
    //                       l10n.homeScreenQuestion,
    //                       style: MentalHealthTextStyles
    //                           .text.popinsSecondaryFontF16,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           // const CarouselWidget(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
