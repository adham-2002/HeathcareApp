import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/screens/login_screen.dart';
import 'package:healthcare_app/widgets/custom_TextFormField.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool passToggle = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    "images/doctors.png",
                  ),
                ),
                SizedBox(height: 15),
                CustomTextFormField(
                  text: 'Full Name',
                  prefixIcon: Icons.person,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'full name must be filled';
                    }
                    return null;
                  },
                  obscureText: false,
                ),
                CustomTextFormField(
                  text: 'Email Address',
                  prefixIcon: Icons.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'email must be filled';
                    }
                    return null;
                  },
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                CustomTextFormField(
                  text: 'Phone Number',
                  prefixIcon: Icons.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'phone number must be filled';
                    }
                    return null;
                  },
                  obscureText: false,
                  textInputType: TextInputType.phone,
                ),
                CustomTextFormField(
                  text: 'Passowrd',
                  prefixIcon: Icons.lock,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'password must be filled';
                    }
                  },
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have account? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
