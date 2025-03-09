import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';

import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
// import 'package:ritual_app/utils/utils.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'biography_tab_widget');

class BiographyTabWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final MemoryPage profileData;
  final ValueChanged<MemoryPage> onProfileDataChanged;

  const BiographyTabWidget({
    super.key,
    required this.formKey,
    required this.profileData,
    required this.onProfileDataChanged,
  });

  @override
  State<BiographyTabWidget> createState() => _BiographyTabWidgetState();
}

class _BiographyTabWidgetState extends State<BiographyTabWidget>
    with AutomaticKeepAliveClientMixin<BiographyTabWidget> {
  final Map<String, TextEditingController> _controllers = {};
  bool _isPrivate = false;

  @override
  void initState() {
    super.initState();
    _initializeControllers();
    _isPrivate = widget.profileData.isPrivate;
    _addListeners();
  }

  void _initializeControllers() {
    final fields = {
      'lastName': widget.profileData.lastName,
      'firstName': widget.profileData.firstName,
      'middleName': widget.profileData.middleName,
      'dateOfBirth': widget.profileData.dateOfBirth,
      'dateOfDeath': widget.profileData.dateOfDeath,
      'epitaphy': widget.profileData.epitaphy,
      'biography': widget.profileData.biography,
      'password': widget.profileData.password,
    };

    fields.forEach((key, value) {
      _controllers[key] = TextEditingController(text: value);
    });
  }

  void _addListeners() {
    for (var controller in _controllers.values) {
      controller.addListener(_updateProfileData);
    }
  }

  void _updateProfileData() {
    widget.onProfileDataChanged(
      widget.profileData.copyWith(
        lastName: _controllers['lastName']!.text,
        firstName: _controllers['firstName']!.text,
        middleName: _controllers['middleName']!.text,
        dateOfBirth: _controllers['dateOfBirth']!.text,
        dateOfDeath: _controllers['dateOfDeath']!.text,
        epitaphy: _controllers['epitaphy']!.text,
        biography: _controllers['biography']!.text,
        isPrivate: _isPrivate,
        password: _isPrivate ? _controllers['password']!.text : '',
      ),
    );

    // _log(
    //     '\n lastName:${widget.profileData.lastName} \n  firstName:${widget.profileData.firstName} \n  middleName:${widget.profileData.middleName} \n  dateOfBirth:${widget.profileData.dateOfBirth} \n  dateOfDeath:${widget.profileData.dateOfDeath} \n  epitaphy:${widget.profileData.epitaphy} \n  biography:${widget.profileData.biography} \n  isPrivate:${widget.profileData.isPrivate} \n  password:${widget.profileData.password} \n ');
  }

  @override
  void dispose() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

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
              CircleAvatarWidget(
                profileData: widget.profileData,
                onProfileDataChanged: widget.onProfileDataChanged,
              ),
              const SizedBox(height: 16),
              MPTextField(
                  controller: _controllers['lastName']!, label: 'Фамилия'),
              MPTextField(controller: _controllers['firstName']!, label: 'Имя'),
              MPTextField(
                  controller: _controllers['middleName']!, label: 'Отчество'),
              Row(
                children: [
                  Flexible(
                    child: MPTextField(
                      controller: _controllers['dateOfBirth']!,
                      label: 'Дата рождения',
                      isDateInput: true,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: MPTextField(
                      controller: _controllers['dateOfDeath']!,
                      label: 'Дата смерти',
                      isDateInput: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              MPTextField(
                  controller: _controllers['epitaphy']!,
                  label: 'Эпитафия',
                  hintText: 'В сердце и в памяти'),
              MPTextField(
                  controller: _controllers['biography']!,
                  label: 'Биография',
                  maxLines: 4),
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
                        _updateProfileData();
                      });
                    },
                  ),
                ],
              ),
              if (_isPrivate)
                MPTextField(
                  controller: _controllers['password']!,
                  label: 'Пароль',
                  obscureText: true,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
