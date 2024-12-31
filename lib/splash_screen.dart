import 'package:flutter/material.dart';
import 'dart:async';

import 'package:islami/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash_screen';
  @override
  Widget build(BuildContext context) {
    // Navigate to IntroScreen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    return Image.asset("assets/images/splash_screen.png",
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.cover,);
  }
}
