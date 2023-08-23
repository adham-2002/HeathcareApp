// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({super.key, required this.icon, required this.color});

  IconData icon;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Color(0xFF9F97E2),
        color: Colors.green.shade200,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: color,
        size: 25,
      ),
    );
  }
}
