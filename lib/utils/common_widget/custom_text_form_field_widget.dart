import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class CustomFormFieldWidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool usepObscureText;
  const CustomFormFieldWidget({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
    required this.usepObscureText,
  });

  @override
  State<CustomFormFieldWidget> createState() => _CustomFormFieldWidgetState();
}

class _CustomFormFieldWidgetState extends State<CustomFormFieldWidget> {
  late bool _obscurePassword;
  @override
  void initState() {
    super.initState();
    _obscurePassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) => widget.validator(value),
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14Grey,
        errorStyle: MentalHealthTextStyles.text.popinsSecondaryFontF14Grey,
        filled: true,
        //fillColor: //AppColor.authFieldsGray,
        focusedBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
              //color: //AppColor.primaryBackgroundColor,
              ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
            //color: //AppColor.authFieldsBordersGray,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: MentalHealthDecorations.borders.radiusC10,
          borderSide: const BorderSide(
            //color: //AppColor.primaryBackgroundColor,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        suffixIcon: widget.usepObscureText
            ? IconButton(
                icon: Icon(_obscurePassword
                    ? Icons.visibility
                    : Icons.visibility_off_outlined),
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              )
            : null,
      ),
      obscureText: widget.usepObscureText ? _obscurePassword : false,
    );
  }
}
