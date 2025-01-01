import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/model/sura_model.dart';
import 'package:islami/tabs/quran/sura_content_item.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details_screen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty){
      loadSuraFile(args.index);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(args.suraEnglishName,
        style: TextStyle(
          color: AppColors.primrayDark
        ),),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: AppColors.blackColor,
            child: Image.asset("assets/images/details_screen_bg.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,),
          ),
          Column(
            children: [
              SizedBox(height: 20,),
              Text(args.suraArabicName,
              style: TextStyle(
                color: AppColors.primrayDark
              ),),
              SizedBox(height: 20,),
              Expanded(
                child:
                verses.isEmpty?
                    Center(child: CircularProgressIndicator(
                      color: AppColors.primrayDark,
                    ))
                    :
                ListView.builder(itemBuilder: (context,index){
                  return SuraContentItem(
                    contant: verses[index],
                    index: index,
                  );
                },
                itemCount: verses.length,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void loadSuraFile (int index)async{
    String suraContant = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> suraLines = suraContant.split('\n');
    for (int i = 0; i < suraLines.length; i++){
      print(suraLines[i]);
    }
    verses = suraLines;
    setState(() {

    });
  }
}
