import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// class MPDatePicker extends StatefulWidget {
//   final String label;
//   const MPDatePicker({super.key, required this.label});

//   @override
//   _MPDatePickerState createState() => _MPDatePickerState();
// }

// class _MPDatePickerState extends State<MPDatePicker> {
//   DateTime? selectedDate;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           const SizedBox(height: 8),
//           DecoratedBox(
//             decoration: BoxDecoration(
//               color: Colors.grey[800],
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Row(
//               children: [

//                 Container(
//                   margin: const EdgeInsets.all(4),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[700],
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: IconButton(
//                     icon: const Icon(Icons.calendar_today, color: Colors.white),
//                     onPressed: () async {
//                       final date = await showDatePicker(
//                         context: context,
//                         initialDate: selectedDate ?? DateTime.now(),
//                         firstDate: DateTime(1900),
//                         lastDate: DateTime.now(),
//                       );
//                       if (date != null) {
//                         setState(() {
//                           selectedDate = date;
//                         });
//                       }
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
        fillColor: const Color(0xFF303030).withOpacity(.8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        labelStyle: TextStyle(
          color: Colors.grey[400],
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        prefixIcon: const Icon(
          Icons.calendar_today,
          color: Colors.white,
        ),
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


// class MPTextField extends StatelessWidget {
//   final String label;
//   final int? maxLines;
//   final String? hintText;

//   const MPTextField({
//     super.key,
//     required this.label,
//     this.maxLines = 1,
//     this.hintText,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16.0),
//       child: TextFormField(
//         decoration: InputDecoration(
//           labelText: label,
//           hintText: 
//                       selectedDate != null
//                           ? DateFormat('MM/dd/yyyy').format(selectedDate!)
//                           : 'mm/dd/yyyy',
                  
//           filled: true,
//           fillColor:
//               Color(0xFF303030).withOpacity(.8), // Light grey text for label

//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12), // Rounded corners
//             borderSide: BorderSide.none, // No border
//           ),
//           labelStyle: TextStyle(
//             color: Colors.grey[400], // Light grey text for label
//           ),
//           floatingLabelBehavior:
//               FloatingLabelBehavior.always, // Label always on top
//           contentPadding: EdgeInsets.symmetric(
//               horizontal: 16, vertical: 20), // Padding inside the field
//         ),
//         maxLines: maxLines,
//         style: TextStyle(color: Colors.white), // White text for input
//       ),
//     );
//   }
// }
