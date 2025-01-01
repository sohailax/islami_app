import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/app_colors.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  int phase = 0;

  final List<String> phrases = ["سبحان الله", "الحمد لله", "الله أكبر"];

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter > 33) {
        counter = 0;
        phase = (phase + 1) % phrases.length; // Move to the next phrase
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/onboarding_header.png", height: 170,),
            SizedBox(height: 16,),
            Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: GoogleFonts.elMessiri(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16,),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/sebha_body.png"),
                GestureDetector(
                  onTap: incrementCounter,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 30,),
                          Text(
                            phrases[phase],
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "$counter",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

      ],
    ),
      ),
    );
  }
}
