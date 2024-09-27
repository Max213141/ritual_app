import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'biography_tab_widget');

class CircleAvatarWidget extends StatefulWidget {
  const CircleAvatarWidget({super.key});

  @override
  State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
  File? _imageFile; // To store the selected image

  // Image picker function
  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path); // Store the image file
      });

      _log('$_imageFile');
    }
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).primaryColorDark;
    // final backgroundColor = Theme.of(context).primaryColor;
    final size = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 54,
            backgroundColor: Colors.grey[300],
            backgroundImage: _imageFile != null
                ? FileImage(_imageFile!) // Display the selected image
                : null, // Show no image if none is selected
            child: _imageFile == null
                ? Icon(
                    Icons.file_upload_outlined,
                    size: 50,
                    color: iconColor,
                  )
                : null, // Show the upload icon if no image is selected
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 45,
            width: size / 2.5,
            child: ActionButton(
              buttonColor: const Color(0xFF303030).withOpacity(.8),
              onPressed: pickImage, // Call the image picker function
              title: 'Загрузить фото',
            ),
          ),
        ],
      ),
    );
  }
}
