import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/model/sura_model.dart';

import '../../app_colors.dart';
import '../../model/sura_model.dart';

class SuraItemHorzontal extends StatelessWidget {
  SuraModel suraModel;
  SuraItemHorzontal({required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: AppColors.primrayDark,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(suraModel.suraEnglishName,
                style: GoogleFonts.elMessiri(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 8,),
              Text(suraModel.suraArabicName,
                style: GoogleFonts.elMessiri(
                  color: AppColors.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 8,),
              Text("${suraModel.numOfVerses} Verses",
                style: GoogleFonts.elMessiri(
                color: AppColors.blackColor,
                fontSize: 24,
                fontWeight: FontWeight.bold
               ),),
            ]
          ),
          Image.asset("assets/images/most_recently.png")
        ],
      ),
    );
  }
}

