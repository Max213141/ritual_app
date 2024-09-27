import 'package:flutter/material.dart';

import 'package:ritual_app/entities/project_entities/memory_page.dart';
import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';

void _log(dynamic message) =>
    Logger.projectLog(message, name: 'biography_tab_widget');

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
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const CircleAvatarWidget(),
              const SizedBox(height: 16),
              const MPTextField(label: 'Фамилия'),
              const MPTextField(label: 'Имя'),
              const MPTextField(label: 'Отчество'),
              const Row(
                children: [
                  Flexible(child: MPDatePicker(label: 'Дата рождения')),
                  SizedBox(width: 8),
                  Flexible(child: MPDatePicker(label: 'Дата смерти')),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const MPTextField(
                  label: 'Эпитафия', hintText: 'В сердце и в памяти'),
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
          ),
        ),
      ),
    );
  }
}
