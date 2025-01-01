import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/onboarding_screen.dart';
import 'package:islami/splash_screen.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';

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
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),
        OnboardingScreen.routeName : (context) => OnboardingScreen(),
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetailsScreen.routeName : (context) => SuraDetailsScreen()
      },
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
