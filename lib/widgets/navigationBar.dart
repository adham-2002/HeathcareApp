// ignore_for_file: use_key_in_widget_constructors, camel_case_types, depend_on_referenced_packages, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/screens/home_screen.dart';
import 'package:healthcare_app/screens/messages_screen.dart';
import 'package:healthcare_app/screens/schedule_screen.dart';
import 'package:healthcare_app/screens/settings_screen.dart';

class navigationBar extends StatefulWidget {
  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  int selectedIndex = 0;
  final screens = [
    HomeScreen(),
    MessagesScreen(),
    ScheduleScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chat_bubble_text_fill,
              ),
              label: "Messages",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
              ),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
