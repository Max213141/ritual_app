import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/utils/utils.dart';

class CircleAvatarWidget extends StatefulWidget {
  final AppLocalizations l10n;
  final MemoryDesk profileData;
  final ValueChanged<MemoryDesk> onProfileDataChanged;
  const CircleAvatarWidget({
    super.key,
    required this.profileData,
    required this.onProfileDataChanged,
    required this.l10n,
  });

  @override
  State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
  File? _imageFile;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;

    final file = File(picked.path);
    setState(
      () => _imageFile = file,
    );

    // only update localPhotoPath for now
    widget.onProfileDataChanged(
      widget.profileData.copyWith(localPhotoPath: file.path),
    );
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).primaryColorDark;
    final displayImage = _imageFile != null && _imageFile!.path.isNotEmpty
        ? FileImage(_imageFile!)
        : (widget.profileData.photoUrl != null &&
                widget.profileData.photoUrl!.isNotEmpty
            ? NetworkImage(widget.profileData.photoUrl!)
            : null);

    return GestureDetector(
      onTap: pickImage,
      child: Column(
        children: [
          CircleAvatar(
            radius: 54,
            backgroundColor: Colors.grey[300],
            backgroundImage:
                displayImage is ImageProvider ? displayImage : null,
            child: displayImage == null
                ? Icon(
                    Icons.file_upload_outlined,
                    size: 50,
                    color: iconColor,
                  )
                : null,
          ),
          const SizedBox(height: 8),
          Text(
            widget.l10n.mdScreenAddPhoto,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
          )
          // SizedBox(
          //   height: 45,
          //   width: size / 2.5,
          //   child: ActionButton(
          //     buttonColor: const Color(0xFF303030).withValues(alpha: .8),
          //     onPressed: pickImage,
          //     title: 'Загрузить фото',
          //   ),
          // ),
        ],
      ),
    );
  }
}
