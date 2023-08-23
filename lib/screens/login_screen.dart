import 'package:flutter/material.dart';
import 'package:healthcare_app/constants.dart';
import 'package:healthcare_app/screens/register_screen.dart';
import 'package:healthcare_app/widgets/custom_TextFormField.dart';
import 'package:healthcare_app/widgets/navigationBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:healthcare_app/components/components.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;

  bool isLoading = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: CircularProgressIndicator(
        color: kPrimaryColor,
      ),
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      "images/doctors.png",
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    textInputType: TextInputType.emailAddress,
                    controller: emailController,
                    text: 'Email Address',
                    prefixIcon: Icons.person,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email Address must be filled';
                      } else if (!value.contains("@")) {
                        return 'Invalid Email Address';
                      } else {
                        return null;
                      }
                    },
                    obscureText: false,
                  ),
                  CustomTextFormField(
                    controller: passwordController,
                    text: 'Password',
                    prefixIcon: Icons.lock,
                    obscureText: isPassword ? true : false,
                    suffixIcon: InkWell(
                      onTap: () {
                        if (isPassword == true) {
                          isPassword = false;
                        } else {
                          isPassword = true;
                        }
                        setState(() {});
                      },
                      child: isPassword
                          ? const Icon(FontAwesomeIcons.eyeSlash)
                          : const Icon(FontAwesomeIcons.solidEye),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password must be filled';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 or higher';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            isLoading = true;
                          });

                          if (emailController.text == 'ahmed@gmail.com' &&
                              passwordController.text == '1234567') {
                            await Future.delayed(
                                const Duration(
                                  seconds: 3,
                                ), () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => navigationBar()),
                                (route) => false,
                              );
                            });
                            setState(() {
                              showToast(
                                state: ToastStates.SUCCESS,
                                text: 'Login Successfully',
                              );
                            });
                          } else {
                            if (emailController.text != 'ahmed@gmail.com') {
                              emailController.clear();
                              setState(() {
                                showToast(
                                  state: ToastStates.ERROR,
                                  text: 'incorrect email or email not exist',
                                );
                              });
                            } else if (passwordController.text != '1234567') {
                              passwordController.clear();
                              setState(() {
                                showToast(
                                  state: ToastStates.ERROR,
                                  text: 'incorrect password',
                                );
                              });
                            }
                          }
                          setState(() {
                            isLoading = false;
                          });

                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => navigationBar(),
                          //     ));
                        }
                      },
                      child: Container(
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
                            "Log In",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ));
                        },
                        child: Text(
                          " Create Account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
