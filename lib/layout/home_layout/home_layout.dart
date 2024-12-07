import 'package:daily_exercise_app/constants.dart';
import 'package:daily_exercise_app/layout/home_layout/all_exercises_screen.dart';
import 'package:daily_exercise_app/layout/home_layout/calender_screen.dart';
import 'package:daily_exercise_app/layout/home_layout/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens= const[
     CalenderScreen(),
    ExercisesScreen(),
    SettingsScreen()
  ];
  int index=0;

  @override
  void initState()=>super.initState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: screens[index]) ,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:SvgPicture.asset('assets/icons/calendar.svg',color: index==0?kActiveIconColor:kTextColor,),label: 'Today'),
          BottomNavigationBarItem(icon:SvgPicture.asset('assets/icons/gym.svg',color: index==1?kActiveIconColor:kTextColor),label: 'All Exercises'),
          BottomNavigationBarItem(icon:SvgPicture.asset('assets/icons/Settings.svg',color: index==2?kActiveIconColor:kTextColor),label: 'settings'),
        ],
        backgroundColor: Colors.white,
        currentIndex: index,
        onTap: (int index){
          setState(() {
            this.index=index;
          });
        },
      ),
      // bottomNavigationBar:Container(
      //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      //   height:70,
      //   child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       BottomBar(title: "Today", svgSrc:'assets/icons/calendar.svg',press: (){}),
      //       BottomBar(title: "Exercises", svgSrc:'assets/icons/gym.svg',press:(){
      //
      //       },isActive: true,),
      //       BottomBar(title: "settings", svgSrc:'assets/icons/Settings.svg',press: (){
      //
      //       },),
      //   ],),
      // )

    );
  }
}
