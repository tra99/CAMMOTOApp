import 'package:cammoto_project/reusable/textfield.dart';
import 'package:cammoto_project/screens/forgetpss.dart';
import 'package:cammoto_project/screens/homepage.dart';
import 'package:cammoto_project/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/cover1.png',
              height: 230,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  const SizedBox(height: 230),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 35, 31, 32),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Welcome to CAMMOTO!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          reusableTextField('Enter email', Icons.email_outlined, false),
                          const SizedBox(
                            height: 14,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          reusableTextField1(
                              'Enter password', Icons.enhanced_encryption_rounded, true),
                          GestureDetector(
                            onTap: () {
                              Get.to(const ForgetPassword());
                            },
                            child: Center(
                              child: Text(
                                "Forget your password ?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Get.to(HomePage());
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: TextButton.styleFrom(
                                  foregroundColor:
                                      const Color.fromARGB(255, 35, 31, 32),
                                  backgroundColor:
                                      const Color.fromARGB(255, 217, 217, 217),
                                  padding: const EdgeInsets.only(
                                      left: 40, right: 40, top: 8, bottom: 8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(const SignUpPage());
                                  },
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 245, 160, 31),
                                        fontSize: 24),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
