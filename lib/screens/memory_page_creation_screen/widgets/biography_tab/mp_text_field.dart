import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MPTextField extends StatelessWidget {
  final String label;
  final int? maxLines;
  final String? hintText;
  final bool isDateInput;
  final TextEditingController controller;
  final bool obscureText;
  final int? maxSignAmount;

  const MPTextField(
      {super.key,
      required this.controller,
      required this.label,
      this.maxLines = 1,
      this.hintText,
      this.isDateInput = false,
      this.obscureText = false,
      this.maxSignAmount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(48, 48, 48, 100)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label),
              TextFormField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: hintText ?? (isDateInput ? 'dd.mm.yyyy' : null),
                  hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.grey[400]!.withValues(alpha: 0.3),
                      fontWeight: FontWeight.bold),
                ),
                // decoration: InputDecoration(
                //   labelText: label,
                //   hintText: hintText ?? (isDateInput ? 'dd.mm.yyyy' : null),
                //   hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                //       color: Colors.grey[400]!.withValues(alpha: 0.3),
                //       fontWeight: FontWeight.bold),
                //   filled: true,
                //   fillColor: const Color(0xFF303030).withValues(alpha: 0.8),
                //   border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(12),
                //     borderSide: BorderSide.none,
                //   ),
                //   labelStyle: TextStyle(
                //     color: Colors.grey[400],
                //   ),
                //   floatingLabelBehavior: FloatingLabelBehavior.always,
                //   contentPadding:
                //       const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                // ),
                maxLines: maxLines,
                style: const TextStyle(color: Colors.white),
                keyboardType:
                    isDateInput ? TextInputType.number : TextInputType.text,
                maxLength: maxSignAmount,
                inputFormatters: isDateInput
                    ? [
                        FilteringTextInputFormatter.digitsOnly,
                        DateInputFormatter(),
                        LengthLimitingTextInputFormatter(10),
                      ]
                    : [],
              ),
            ],
          ),
        ),
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
