// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/login_screen.dart';
import 'package:healthcare_app/screens/welcome_screen.dart';
import 'package:healthcare_app/widgets/custom_settings_ListTile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/doctor3.jpg"),
              ),
              title: Text(
                "Ahmed",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              subtitle: Text("Profile"),
            ),
            const Divider(height: 50),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CustomListTile(
                      color: Colors.blue,
                      bcolor: Colors.blue.shade100,
                      icon: CupertinoIcons.person,
                      text: "Profile",
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      color: Colors.deepPurple,
                      bcolor: Colors.deepPurple.shade100,
                      icon: Icons.notifications_none_outlined,
                      text: "Notifications",
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      bcolor: Colors.indigo.shade100,
                      color: Colors.indigo,
                      icon: Icons.privacy_tip_outlined,
                      text: "Privacy",
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      color: Colors.green,
                      bcolor: Colors.green.shade100,
                      icon: Icons.settings_suggest_outlined,
                      text: "General",
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      color: Colors.orange,
                      bcolor: Colors.orange.shade100,
                      icon: Icons.info_outline_rounded,
                      text: "About Us",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomListTile(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const WelcomeScreen();
                            },
                          ),
                        );
                      },
                      color: Colors.redAccent,
                      bcolor: Colors.redAccent.shade100,
                      icon: Icons.info_outline_rounded,
                      text: "Log Out",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
