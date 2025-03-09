import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'biography_tab_widget');

class CircleAvatarWidget extends StatefulWidget {
  final MemoryPage profileData;

  final ValueChanged<MemoryPage> onProfileDataChanged;

  const CircleAvatarWidget({
    super.key,
    required this.onProfileDataChanged,
    required this.profileData,
  });

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
      _updateProfileData(pickedFile.path);
      _log('$_imageFile');
    }
  }

  void _updateProfileData(String imagePath) {
    widget.onProfileDataChanged(
      widget.profileData.copyWith(
        photoUrl: imagePath,
      ),
    );

    // _log(
    //     '\n lastName:${widget.profileData.lastName} \n  firstName:${widget.profileData.firstName} \n  middleName:${widget.profileData.middleName} \n  dateOfBirth:${widget.profileData.dateOfBirth} \n  dateOfDeath:${widget.profileData.dateOfDeath} \n  epitaphy:${widget.profileData.epitaphy} \n  biography:${widget.profileData.biography} \n  isPrivate:${widget.profileData.isPrivate} \n  password:${widget.profileData.password} \n ');
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).primaryColorDark;
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
              buttonColor: const Color(0xFF303030).withValues(alpha: .8),
              onPressed: pickImage, // Call the image picker function
              title: 'Загрузить фото',
            ),
          ),
        ],
      ),
    );
  }
}
