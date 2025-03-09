import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MPTextField extends StatelessWidget {
  final String label;
  final int? maxLines;
  final String? hintText;
  final bool isDateInput;
  final TextEditingController controller;
  final bool obscureText;

  const MPTextField({
    super.key,
    required this.controller,
    required this.label,
    this.maxLines = 1,
    this.hintText,
    this.isDateInput = false,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText ?? (isDateInput ? 'dd.mm.yyyy' : null),
          filled: true,
          fillColor: const Color(0xFF303030).withOpacity(0.8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          labelStyle: TextStyle(
            color: Colors.grey[400],
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        ),
        maxLines: maxLines,
        style: const TextStyle(color: Colors.white),
        keyboardType: isDateInput ? TextInputType.number : TextInputType.text,
        maxLength: isDateInput ? 10 : null,
        inputFormatters: isDateInput
            ? [FilteringTextInputFormatter.digitsOnly, DateInputFormatter()]
            : [],
      ),
    );
  }
}

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String digits = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    String formatted = '';

    for (int i = 0; i < digits.length; i++) {
      if (i == 2 || i == 4) {
        formatted += '.';
      }
      formatted += digits[i];
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
