import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = 'onboarding_screen';

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(
      'assets/images/$assetName',
      width: width,
      fit: BoxFit.fitHeight,
      height: 400,
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    var bodyStyle = GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0XFFE2BE7F),);

    var pageDecoration = PageDecoration(
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0XFFE2BE7F)),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: const Color(0XFF202020),
      imagePadding: EdgeInsets.zero,
      imageFlex: 2,
      bodyFlex: 2,
      bodyAlignment: Alignment(0 , 2 ),
      safeArea: 2,
      pageMargin: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
    );

    return IntroductionScreen(
      globalHeader: Image.asset("assets/images/onboarding_header.png",
        alignment: Alignment.topCenter,),
      dotsFlex: 2,
      dotsDecorator: DotsDecorator(
        color: Color(0XFF707070),
        activeColor: Color(0XFFFFD482)
      ),
      globalBackgroundColor: Color(0XFF202020),
      showDoneButton: true,
      onDone: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      done: Text("Finish",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0XFFE2BE7F))),
      showNextButton: true,
      next: Text("Next",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0XFFE2BE7F))),
      showBackButton: true,
      back: Text("Back",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0XFFE2BE7F))),

      pages: [
        PageViewModel(

          title: "Welcome To Islmi App",
          body:
              "",
          image: _buildImage('onboarding1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islmi App",
          body:
            "We Are Very Excited To Have You In Our Community",
          image: _buildImage('onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "KReading the Quran",
          body:
          "Read, and your Lord is the Most Generous",
          image: _buildImage('onboarding3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: _buildImage('onboarding4.png'),

          decoration: pageDecoration
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body: "You can listen to the Holy Quran Radio through the application for free and easily",
          image: _buildImage('onboarding5.png'),
          decoration: pageDecoration,
        ),
      ],
    );
  }
}



