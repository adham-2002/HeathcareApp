// ignore_for_file: must_be_immutable, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
    required this.bcolor,
    this.ontap,
  });

  String text;
  Color color;
  Color bcolor;
  IconData icon;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bcolor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: color,
          size: 35,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
