import 'dart:async';

import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isLoading = true;
  int dotCount = 1;
  Timer? dotTimer;

  // Replace this function with your actual loading process.
  // For demonstration purposes, we simulate a delay of 3 seconds.
  void simulateLoading() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
        dotTimer?.cancel(); // Cancel the dot animation timer when loading is complete.
      });
    });
  }

  @override
  void initState() {
    super.initState();
    simulateLoading();
    // Start the dot animation timer, which updates the dotCount every 500 milliseconds.
    dotTimer = Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        dotCount = (dotCount + 1) % 4; // This will cycle the dot animation between 1 to 3 dots.
      });
    });
  }

  @override
  void dispose() {
    dotTimer?.cancel(); // Cancel the timer to avoid memory leaks.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Screen With Dot Animation'),
      ),
      body: Stack(
        children: [
          // Main content goes here
          Center(
            child: Text('Your Main Content'),
          ),
          // Loading indicator overlay
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return AnimatedOpacity(
                          opacity: dotCount == index + 1 ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 300),
                          child: Text(
                            ' . ',
                            style: TextStyle(fontSize: 24),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}


