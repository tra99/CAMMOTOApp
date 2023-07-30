import 'package:cammoto_project/tests/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroScreenState();
  }
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.white),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.orange,
            Colors.deepOrangeAccent,
            Colors.red,
            Colors.redAccent,
          ],
        ),
      ),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.deepOrangeAccent,
      pages: [
        PageViewModel(
          title: "Fractional shares",
          bodyWidget: const Column(
            children: [
              Expanded(
                child: Text(
                  "Instead of having to buy an entire share, invest any amount you want.",
                  style: TextStyle(fontSize: 19.0, color: Colors.white),
                ),
              ),
            ],
          ),
          image: introImage('assets/cover1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fractional shares",
          bodyWidget: const Column(
            children: [
              Expanded(
                child: Text(
                  "Instead of having to buy an entire share, invest any amount you want.",
                  style: TextStyle(fontSize: 19.0, color: Colors.white),
                ),
              ),
            ],
          ),
          image: introImage('assets/cover2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fractional shares",
          bodyWidget: const Column(
            children: [
              Expanded(
                child: Text(
                  "Instead of having to buy an entire share, invest any amount you want.",
                  style: TextStyle(fontSize: 19.0, color: Colors.white),
                ),
              ),
            ],
          ),
          image: introImage('assets/cover3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => goHomepage(context),
      onSkip: () => goHomepage(context),
      showSkipButton: true,
      // skipFlex: 0,
      nextFlex: 0,
      skip: const Flexible(
        flex: 1,
        child: Text(
          'Skip',
          style: TextStyle(color: Colors.white),
        ),
      ),
      next: const Icon(Icons.arrow_forward, color: Colors.white,),
      done: const Text('Getting Started', style: TextStyle(
          fontWeight: FontWeight.w600, color:Colors.white
        ),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) {
        return Home();
      }),
      (Route<dynamic> route) => false,
    );
  }

  Widget introImage(String assetName) {
    return Align(
      child: Image.asset('$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
}
