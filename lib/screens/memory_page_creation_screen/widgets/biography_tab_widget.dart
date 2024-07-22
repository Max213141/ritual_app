// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ritual_app/entities/project_entities/memory_page.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';

class BiographyTabWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final MemoryPage profileData;

  const BiographyTabWidget({
    super.key,
    required this.formKey,
    required this.profileData,
  });

  @override
  State<BiographyTabWidget> createState() => _BiographyTabWidgetState();
}

class _BiographyTabWidgetState extends State<BiographyTabWidget>
    with AutomaticKeepAliveClientMixin<BiographyTabWidget> {
  bool _isPrivate = false;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Form(
      key: widget.formKey,
      child: SingleChildScrollView(
          child: Column(
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
          const MPTextField(label: 'Эпитафия', hintText: 'В сердце и в памяти'),
          const MPTextField(label: 'Биография', maxLines: 4),
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
        ],
      )),
    );
  }
}
