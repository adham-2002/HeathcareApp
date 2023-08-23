import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/screens/login_screen.dart';
import 'package:healthcare_app/screens/register_screen.dart';
import 'package:healthcare_app/widgets/custom_material.dart';
import 'package:healthcare_app/widgets/navigationBar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => navigationBar(),
                      ));
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),
            ),
            const SizedBox(height: 50),
            Text(
              "Doctors Appointment",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Appoint Your Doctor",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomMaterial(
                  nextScreen: const LoginScreen(),
                  text: 'Log in',
                ),
                CustomMaterial(
                  nextScreen: RegisterScreen(),
                  text: 'Sign up',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
