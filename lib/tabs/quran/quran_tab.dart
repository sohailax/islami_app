import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/model/sura_model.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';
import 'package:islami/tabs/quran/sura_item_horzontal.dart';
import 'package:islami/tabs/quran/sura_list.dart';

class QuranTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/onboarding_header.png"),
          TextField(
            cursorColor: AppColors.whiteColor,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: AppColors.primrayDark,
                  width: 2
                )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                      color: AppColors.primrayDark,
                      width: 2
                  )
              ),
              prefixIcon: ImageIcon(AssetImage("assets/images/Quran_ic.png"),
              color: AppColors.primrayDark,),
              hintText: "Sura Name",
              hintStyle: TextStyle(
                color: AppColors.whiteColor
              ),
            )
          ),
          SizedBox(height: 20,),
          Text("Most Recently",
          style: TextStyle(
            color: AppColors.whiteColor
          ),),
          SizedBox(height: 10,),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return SuraItemHorzontal(suraModel: SuraModel.getSuraModel(index));
              },
              itemCount: SuraModel.getSuraItemCount(),
            ),
          ),
          SizedBox(height: 10,),
          Text("Sura List",
            style: TextStyle(
                color: AppColors.whiteColor
            ),),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context,index){
                return Divider(
                  color: AppColors.whiteColor,
                  thickness: 2,
                  indent: 30.5,
                  endIndent: 25.5,
                );
              },
              itemBuilder: (context,index) {
                return InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
                    arguments: SuraModel.getSuraModel(index));
                  },
                  child: SuraList(
                    suraModel: SuraModel.getSuraModel(index),
                  )
                );
              },
              itemCount: SuraModel.getSuraItemCount(),
          ))
        ],
      ),
    );
  }
}
