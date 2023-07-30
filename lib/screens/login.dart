import 'package:cammoto_project/reusable/textfield.dart';
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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: ListView(
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
                                  fontStyle: FontStyle.italic
                                ),
                              ),
                            ),
                            SizedBox(height: 70,),
                            Text('Email',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                            const SizedBox(height: 6,),
                            reusableTextField('Enter email', Icons.email_outlined, false),
                            const SizedBox(height: 20,),
                            Text('Email',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                            const SizedBox(height: 6,),
                            reusableTextField1('Enter password', Icons.enhanced_encryption_rounded, true)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container stackBox() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 35, 31, 32),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
    );
  }
}
