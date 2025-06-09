// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:ritual_app/entities/entities.dart';
import 'package:ritual_app/screens/memory_page_preview_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';
// import 'package:ritual_app/utils/loger.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'memory_page_preview');

class MemoryPagePreviewScreen extends StatefulWidget {
  final MemoryDesk memoryPageData;
  final EditableMedia mediaData;

  const MemoryPagePreviewScreen({
    super.key,
    required this.memoryPageData,
    required this.mediaData,
  });

  @override
  State<MemoryPagePreviewScreen> createState() =>
      _MemoryPagePreviewScreenState();
}

class _MemoryPagePreviewScreenState extends State<MemoryPagePreviewScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    final tabs = [
      l10n.mdScreenBiography,
      l10n.mdScreenPhoto,
      l10n.mdScreenVideo
    ];
    final memoryPageData = widget.memoryPageData;

    final firstName = memoryPageData.firstName;
    final middleName = memoryPageData.middleName;
    final lastName = memoryPageData.lastName;
    final dateOfBirth = memoryPageData.dateOfBirth;
    final dateOfDeath = memoryPageData.dateOfDeath;
    final epitaphy = memoryPageData.epitaphy;
    final photoUrl = memoryPageData.photoUrl;

    final textTheme = Theme.of(context).textTheme;

    // _log(
    //     'firstName:$firstName; middleName:$middleName; lastName:$lastName; dateOfBirth:$dateOfBirth; dateOfDeath:$dateOfDeath; epitaphy:$epitaphy;');

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: CustomPaint(
                        // Size of the half-circle, half the size of the image
                        size: const Size(150, 150),
                        painter: HalfCirclePainter(),
                      ),
                    ),
                    // CircleAvatar for the image
                    Positioned(
                      child: Center(
                        child: CircleAvatar(
                          radius: 54,
                          backgroundColor: Colors.grey[300],
                          backgroundImage: photoUrl != null
                              ? FileImage(
                                  File(photoUrl)) // Display the selected image
                              : null, // Show no image if none is selected
                          child: photoUrl == null
                              ? Icon(
                                  Icons.file_upload_outlined,
                                  size: 50,
                                  color: Theme.of(context).primaryColorDark,
                                )
                              : null, // Show the upload icon if no image is selected
                        ),
                      ),
                    ),
                    // Add CustomPaint as the arc below the avatar
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '${firstName.isEmpty ? '' : firstName} ${middleName.isEmpty ? '' : middleName}\n${lastName.isEmpty ? '' : lastName}',
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                '${dateOfBirth.isEmpty ? '?' : dateOfBirth} - ${dateOfDeath.isEmpty ? '?' : dateOfDeath}',
                style:
                    textTheme.headlineSmall?.copyWith(color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              if (epitaphy.isNotEmpty) ...[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    epitaphy,
                    textAlign: TextAlign.center,
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Divider(
                  thickness: 2,
                ),
              ),
              const SizedBox(height: 24),
              // ... (previous content above tabs)
              PreviewTabBarWidget(
                tabs: tabs,
                selectedIndex: _selectedTabIndex,
                onTap: (index) {
                  setState(() {
                    _selectedTabIndex = index;
                  });
                },
              ),
              // Content based on selected tab
              _buildTabContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    final biography = widget.memoryPageData.biography;

    switch (_selectedTabIndex) {
      case 0:
        return PreviewBiographyWidget(
          biography: biography.isEmpty ? 'Fill in biography' : biography,
        );
      case 1:
        return PickedMediaList(
          mediaList: widget.mediaData.newPhotoFiles,
          watchOnlyMode: true,
        );
      case 2:
        return PickedMediaList(
          mediaList: widget.mediaData.newVideoFiles,
          watchOnlyMode: true,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
