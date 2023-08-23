import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.validator,
    required this.text,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.controller,
    this.textInputType,
  });

  String? Function(String?)? validator;
  String text;
  IconData prefixIcon;
  Widget? suffixIcon;
  bool obscureText;
  TextEditingController? controller = TextEditingController();
  TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        validator: validator,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: kPrimaryColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: kPrimaryColor, // Specify the focus color border
              width: 2.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          label: Text(text),
          prefixIcon: Icon(
            prefixIcon,
          ),
          prefixIconColor: kPrimaryColor,
          suffixIcon: suffixIcon,
          suffixIconColor: kPrimaryColor,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
