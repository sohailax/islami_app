import 'package:flutter/cupertino.dart';
import 'package:islami/app_colors.dart';

class SuraContentItem extends StatelessWidget {
  String contant;
  int index;

  SuraContentItem({required this.contant, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.primrayDark,
          width: 2
        )
      ),
      child: Text('$contant [${index+1}]',
        style: TextStyle(
          color: AppColors.primrayDark,
          fontSize: 20
        ),
        textAlign: TextAlign.center,),

    );
  }
}
