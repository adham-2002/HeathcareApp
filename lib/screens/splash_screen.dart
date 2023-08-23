import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/screens/welcome_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 5);
    //delayed 5 seconds to go to other screen
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
        (route) => false,
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kPrimaryColor,
                Colors.green.shade600,
                Colors.green.shade700,
              ],
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   color: kPrimaryColor,
              //   child: Image.asset(
              //     'images/doctors.png',
              //     scale: 0.9,
              //   ),
              // ),
              Icon(
                FontAwesomeIcons.heartPulse,
                color: Colors.white,
                size: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Medical',
                    style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      // fontFamily: 'BebasNeue',
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                  Text(
                    ' App',
                    style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      // fontFamily: 'BebasNeue',
                      // fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
