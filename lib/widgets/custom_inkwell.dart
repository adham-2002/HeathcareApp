// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  CustomInkWell(
      {super.key,
      required this.onTap,
      required this.ButtonColor,
      required this.TextColor,
      required this.text});

  void Function() onTap;
  Color ButtonColor;
  Color TextColor;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: ButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: TextColor,
          ),
        ),
      ),
    );
  }
}
