// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';

class CustomMaterial extends StatelessWidget {
  CustomMaterial({
    super.key,
    required this.nextScreen,
    required this.text,
  });

  Widget nextScreen;
  String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => nextScreen,
              ));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
