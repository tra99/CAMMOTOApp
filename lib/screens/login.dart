import 'package:cammoto_project/reusable/textfield.dart';
import 'package:cammoto_project/splashPage/splashpage.dart';
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
              height: 174,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListView(
              padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
              shrinkWrap: true,
              reverse: true,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 535,
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
                                  height: 40,
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
                                reusableTextField(
                                    'Enter email', Icons.email_outlined, false),
                                const SizedBox(
                                  height: 20,
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
                                reusableTextField1('Enter password',
                                    Icons.enhanced_encryption_rounded, true),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(const SplashPage());
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 10, left: 178),
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
                                  height: 20,
                                ),
                                Center(
                                  child: TextButton(
                                    onPressed: () {
                                      // code here
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
                                        backgroundColor: const Color.fromARGB(
                                            255, 217, 217, 217),
                                        padding: const EdgeInsets.only(
                                            left: 40, right: 40, top: 8, bottom: 8),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10))),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
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
                                          // code here
                                        },
                                        child: const Text(
                                          'Sign up',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 245, 160, 31),
                                              fontSize: 24),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
