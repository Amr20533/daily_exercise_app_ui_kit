import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  final String title,svgSrc;
  final Function press;
  final bool isActive;
  const BottomBar({required this.title,required this.press,this.isActive=false,required this.svgSrc,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){press();},
      child: Column(
          children:[
            SvgPicture.asset(svgSrc,color: isActive?kActiveIconColor:kTextColor),
            const SizedBox(height: 5.0,),
            Text(title,style: TextStyle(color: isActive?kActiveIconColor:kTextColor),),
          ]
      ),
    );
  }
}
