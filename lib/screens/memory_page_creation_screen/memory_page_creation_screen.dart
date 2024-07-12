import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ritual_app/blocs/blocs.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/services/media/media_service_interface.dart';
import 'package:ritual_app/services/service_locator.dart';

class MemoryPageCreationScreen extends StatefulWidget {
  const MemoryPageCreationScreen({super.key});

  @override
  _MemoryPageCreationScreenState createState() =>
      _MemoryPageCreationScreenState();
}

class _MemoryPageCreationScreenState extends State<MemoryPageCreationScreen> {
  bool _isPrivate = false;
  final _formKey = GlobalKey<FormState>();
  final mediaServiceInterface = getIt<MediaServiceInterface>();
  final StreamController<double> _progressController =
      StreamController<double>();
  late BuildContext _context;

  bool isVideo = false;
  dynamic _pickImageError;

  final ImagePicker _picker = ImagePicker();

  Future<int> getFileSize(XFile file) async {
    final fileInfo = File(file.path);
    return await fileInfo.length();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _context = context; // Save the context reference
  }

  Future<void> _onImageButtonPressed(
    ImageSource source, {
    bool isMulti = false,
    bool isMedia = false,
  }) async {
    try {
      final List<XFile> compressedList = [];
      final List<XFile> pickedFileList = isMedia
          ? await _picker.pickMultipleMedia(
              // maxWidth: maxWidth,
              // maxHeight: maxHeight,
              // imageQuality: quality,
              limit: 4,
            )
          : await _picker.pickMultiImage(
              // maxWidth: maxWidth,
              // maxHeight: maxHeight,
              // imageQuality: quality,
              limit: 4,
            );

      if (pickedFileList.isNotEmpty) {
        for (var file in pickedFileList) {
          final compressedFile = await mediaServiceInterface.compressFile(file);
          compressedList.add(compressedFile);

          final fileName = isMedia
              ? 'media/${compressedFile.name}'
              : 'image/${compressedFile.name}';

          if (!mounted) return;

          BlocProvider.of<MediaBloc>(_context).add(
            UploadMedia(
              file: File(compressedFile.path),
              filePath: fileName,
              progressController:
                  _progressController, // Pass the progress controller
            ),
          );
        }

        if (!mounted) return;
        // setState(() {
        //   _mediaFileList = compressedList;
        // });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _pickImageError = e;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.file_upload_outlined,
                            size: 40, color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Implement photo upload logic
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey[300],
                        ),
                        child: const Text('Загрузить фото'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const MPTextField(label: 'Фамилия'),
                const MPTextField(label: 'Имя'),
                const MPTextField(label: 'Отчество'),
                const MPDatePicker(label: 'Дата рождения'),
                const MPDatePicker(label: 'Дата смерти'),
                const MPTextField(
                    label: 'Эпитафия', hintText: 'В сердце и в памяти'),
                const MPTextField(label: 'Биография', maxLines: 4),
                const SizedBox(height: 16),
                const Text('Фото'),
                const SizedBox(height: 8),
                MediaPickerButton(
                  icon: Icons.camera_alt_outlined,
                  onPressed: () => _onImageButtonPressed(
                    ImageSource.gallery,
                    isMulti: true,
                    isMedia: false,
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Видео'),
                const SizedBox(height: 8),
                MediaPickerButton(
                  icon: Icons.video_call_outlined,
                  onPressed: () => _onImageButtonPressed(
                    ImageSource.gallery,
                    isMulti: true,
                    isMedia: true,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Приватная страница'),
                    Switch(
                      value: _isPrivate,
                      onChanged: (value) {
                        setState(() {
                          _isPrivate = value;
                        });
                      },
                    ),
                  ],
                ),
                if (_isPrivate) const PasswordFieldWidget(),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Implement page creation logic
                      }
                    },
                    child: const Text('Создать страницу'),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .go('/home/mp_creation/mp_preview_screen');
                    },
                    child: const Text('Предварительный просмотр'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}










// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text('Text'),
//           StreamBuilder<double>(
//             stream: _progressController.stream,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Column(
//                   children: [
//                     LinearProgressIndicator(value: snapshot.data! / 100),
//                     Text('${snapshot.data!.toStringAsFixed(2)}%')
//                   ],
//                 );
//               } else {
//                 return Container();
//               }
//             },
//           ),
//         ],
//       ),