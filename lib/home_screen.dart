import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/tabs/hadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 3;
  List<String> backgroungImages = [
    'assets/images/quran_bg.png',
    'assets/images/hadeth_bg.png',
    'assets/images/sebha_bg.png',
    'assets/images/radio_bg.png',
    'assets/images/time_bg.png',
  ];

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(backgroungImages[selectedIndex],
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,),
        Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColors.primrayDark
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {

                });
              },
                items: [
                  BottomNavigationBarItem(
                    icon: bulitItemInBottomNavBar(index: 0, imageName: "Quran_ic"),
                    label: "Quran"
                  ),
                  BottomNavigationBarItem(
                      icon: bulitItemInBottomNavBar(index: 1, imageName: "hadeth_ic"),
                      label: "Hadeth"
                  ),
                  BottomNavigationBarItem(
                      icon: bulitItemInBottomNavBar(index: 2, imageName: "sebha_ic"),
                      label: "Sebha"
                  ),
                  BottomNavigationBarItem(
                      icon: bulitItemInBottomNavBar(index: 3, imageName: "radio_ic"),
                      label: "Radio"
                  ),
                  BottomNavigationBarItem(
                      icon: bulitItemInBottomNavBar(index: 4, imageName: "time_ic"),
                      label: "Time"
                  ),
                ]),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  Widget bulitItemInBottomNavBar ({required int index, required String imageName}) {
    return selectedIndex == index ?
        Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(66),
            color: AppColors.blackBgColor
          ),
          child: ImageIcon(AssetImage("assets/images/$imageName.png")),
        )
        :
        ImageIcon(AssetImage("assets/images/$imageName.png"));
  }
}
