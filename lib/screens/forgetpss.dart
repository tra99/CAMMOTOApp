import 'package:cammoto_project/reusable/textfield.dart';
import 'package:cammoto_project/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/cover3.png',
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
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                              'Forget password !',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          reusableTextField('Enter email', Icons.email, false),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          reusableTextField1(
                              'Enter password', Icons.enhanced_encryption_rounded, true),
                          const SizedBox(height: 8,),
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const SizedBox(height: 2,),
                          reusableTextField1('Repeated Password', Icons.enhanced_encryption_rounded, true),
                          const SizedBox(
                            height: 10,
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
                                "Already have an account?",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(const LoginPage());
                                  },
                                  child: const Text(
                                    'Sign in',
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
