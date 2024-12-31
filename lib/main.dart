import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        OnboardingScreen.routeName : (context) => OnboardingScreen()
      },
    );
  }
}
