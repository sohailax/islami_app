import 'package:flutter/cupertino.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/model/sura_model.dart';

class SuraList extends StatelessWidget {
   SuraModel suraModel;

   SuraList({
     required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/vector.png"),
            Text("${suraModel.index+1}",
            style: TextStyle(
              color: AppColors.whiteColor
            ),)
          ],
        ),
        SizedBox(width: 24,),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(suraModel.suraEnglishName,
                    style: TextStyle(
                      color: AppColors.whiteColor
                    ),),
                  Text("${suraModel.numOfVerses} Verses",
                    style: TextStyle(
                      color: AppColors.whiteColor
                    ),),
                ],
              ),
              Text(suraModel.suraArabicName,
                style: TextStyle(
                    color: AppColors.whiteColor
                ),),
            ],
          ),
        ),

      ],
    );
  }
}
