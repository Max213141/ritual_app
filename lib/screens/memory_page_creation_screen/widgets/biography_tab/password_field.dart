import 'package:flutter/material.dart';
import 'package:ritual_app/utils/localization/app_localizations.dart';

class PasswordFieldWidget extends StatefulWidget {
  final ValueChanged<String> onPasswordChanged;
  final AppLocalizations l10n;

  const PasswordFieldWidget({
    super.key,
    required this.onPasswordChanged,
    required this.l10n,
  });

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  @override
  void dispose() {
    for (final node in _focusNodes) {
      node.dispose();
    }
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _nextField(String value, int index) {
    if (value.isNotEmpty && index < _focusNodes.length - 1) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }

    final code = _controllers.map((c) => c.text).join();
    if (code.length == 4 && !_controllers.any((c) => c.text.isEmpty)) {
      widget.onPasswordChanged(code);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 150,
        // minHeight: 90,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.l10n.mdScreenPrivatePageInfo,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 70,
                  height: 90,
                  child: TextFormField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      filled: false,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 25),
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: color, width: 10),
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(12),
                      //   borderSide: BorderSide(
                      //     color: Theme.of(context).primaryColor,
                      //     width: 1.5,
                      //   ),
                      // ),
                    ),
                    onChanged: (value) => _nextField(value, index),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
