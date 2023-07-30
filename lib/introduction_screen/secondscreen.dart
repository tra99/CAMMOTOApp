import 'package:cammoto_project/introduction_screen/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen2 extends StatefulWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  State<IntroScreen2> createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Text(
                'Teaching',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 50),
            imageCenter(),
            const SizedBox(height: 60),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(child: stackBox()),
                  Align(
                    alignment: Alignment.center,
                    child: SingleChildScrollView( // Wrap with SingleChildScrollView
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              'As an introduction to a multi-part series on How To Service your own Motorcycle',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 60,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(onPressed: (){Get.to(const IntroScreen3());}, child: const Text('SKIP',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                              TextButton(onPressed: (){Get.to(const IntroScreen3());}, child: const Text('NEXT',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          loading()
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

  Center imageCenter() {
    return Center(child: Image.asset('assets/intro2.png',width: 200,));
  }

  Container stackBox() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 35, 31, 32),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
    );
  }
    Row loading(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: SizedBox(
            width: 16,
            height: 16,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 217, 217, 217),
              )
              ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: SizedBox(
            width: 16,
            height: 16,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 94, 58, 53),
              )
              ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: SizedBox(
            width: 16,
            height: 16,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 217, 217, 217),
              )
              ),
          ),
        ),
        SizedBox(
          width: 16,
          height: 16,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 217, 217, 217),
            )
            ),
        )
      ],
    );
}
}
