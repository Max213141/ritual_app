import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MPDatePicker extends StatefulWidget {
  final String label;

  const MPDatePicker({super.key, required this.label});

  @override
  State<MPDatePicker> createState() => _MPDatePickerState();
}

class _MPDatePickerState extends State<MPDatePicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: selectedDate != null
            ? DateFormat('MM/dd/yyyy').format(selectedDate!)
            : 'mm/dd/yyyy',
        filled: true,
        fillColor: const Color(0xFF303030).withValues(alpha: .8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintStyle: const TextStyle(fontSize: 12),
        labelStyle: TextStyle(color: Colors.grey[400]),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        prefixIcon: const Icon(Icons.calendar_today, color: Colors.white),
      ),
      readOnly: true,
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (date != null) {
          setState(() {
            selectedDate = date;
          });
        }
      },
    );
  }
}
