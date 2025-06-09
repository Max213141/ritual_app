import 'package:flutter/material.dart';
import 'package:ritual_app/entities/entities.dart';

import 'package:ritual_app/screens/memory_page_creation_screen/widgets/widgets.dart';
import 'package:ritual_app/utils/utils.dart';
// import 'package:ritual_app/utils/utils.dart';

// void _log(dynamic message) =>
//     Logger.projectLog(message, name: 'biography_tab_widget');

class BiographyTabWidget extends StatefulWidget {
  final AppLocalizations l10n;
  final GlobalKey<FormState> formKey;
  final MemoryDesk profileData;
  final ValueChanged<MemoryDesk> onProfileDataChanged;

  const BiographyTabWidget({
    super.key,
    required this.formKey,
    required this.profileData,
    required this.onProfileDataChanged,
    required this.l10n,
  });

  @override
  State<BiographyTabWidget> createState() => _BiographyTabWidgetState();
}

class _BiographyTabWidgetState extends State<BiographyTabWidget>
    with AutomaticKeepAliveClientMixin<BiographyTabWidget> {
  final Map<String, TextEditingController> _controllers = {};
  String _passwordCode = '';

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
        password: _isPrivate ? _passwordCode : '',
      ),
    );
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
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
          child: Column(
            children: [
              CircleAvatarWidget(
                l10n: widget.l10n,
                profileData: widget.profileData,
                onProfileDataChanged: widget.onProfileDataChanged,
              ),
              const SizedBox(height: 16),
              MPTextField(
                controller: _controllers['lastName']!,
                label: widget.l10n.mdScreenFirstName,
              ),
              MPTextField(
                controller: _controllers['firstName']!,
                label: widget.l10n.mdScreenSecondName,
              ),
              MPTextField(
                controller: _controllers['middleName']!,
                label: widget.l10n.mdScreenThirdName,
              ),
              Row(
                children: [
                  Flexible(
                    child: MPTextField(
                      controller: _controllers['dateOfBirth']!,
                      label: widget.l10n.mdScreenBirthDate,
                      isDateInput: true,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: MPTextField(
                      controller: _controllers['dateOfDeath']!,
                      label: widget.l10n.mdScreenDeathDate,
                      isDateInput: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              MPTextField(
                controller: _controllers['epitaphy']!,
                label: widget.l10n.mdScreenEpitaphy,
                hintText: widget.l10n.mdScreenEpitaphyHint,
              ),
              MPTextField(
                controller: _controllers['biography']!,
                label: widget.l10n.mdScreenBiography,
                maxLines: 4,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.l10n.mdScreenPrivatePage),
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
                PasswordFieldWidget(
                  l10n: widget.l10n,
                  onPasswordChanged: (value) {
                    _passwordCode = value;
                    _updateProfileData();
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
