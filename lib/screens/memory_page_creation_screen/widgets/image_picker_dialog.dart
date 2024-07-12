import 'package:flutter/material.dart';

typedef OnPickImageCallback = void Function(
  // double? maxWidth,
  // double? maxHeight,
  // int? quality,
  int? limit,
);

class ImagePickerDialog extends StatefulWidget {
  final bool isMulti;
  final OnPickImageCallback onPick;
  const ImagePickerDialog({
    super.key,
    required this.isMulti,
    required this.onPick,
  });

  @override
  State<ImagePickerDialog> createState() => _ImagePickerDialogState();
}

class _ImagePickerDialogState extends State<ImagePickerDialog> {
  final TextEditingController maxWidthController = TextEditingController();
  final TextEditingController maxHeightController = TextEditingController();
  final TextEditingController qualityController = TextEditingController();
  final TextEditingController limitController = TextEditingController();

  @override
  void dispose() {
    maxWidthController.dispose();
    maxHeightController.dispose();
    qualityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add optional parameters'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: maxWidthController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration:
                const InputDecoration(hintText: 'Enter maxWidth if desired'),
          ),
          TextField(
            controller: maxHeightController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration:
                const InputDecoration(hintText: 'Enter maxHeight if desired'),
          ),
          TextField(
            controller: qualityController,
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(hintText: 'Enter quality if desired'),
          ),
          if (widget.isMulti)
            TextField(
              controller: limitController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(hintText: 'Enter limit if desired'),
            ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('PICK'),
          onPressed: () {
            // final double? width = maxWidthController.text.isNotEmpty
            //     ? double.parse(maxWidthController.text)
            //     : null;
            // final double? height = maxHeightController.text.isNotEmpty
            //     ? double.parse(maxHeightController.text)
            //     : null;
            // final int? quality = qualityController.text.isNotEmpty
            //     ? int.parse(qualityController.text)
            //     : null;
            final int? limit = limitController.text.isNotEmpty
                ? int.parse(limitController.text)
                : null;
            widget.onPick(limit);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
