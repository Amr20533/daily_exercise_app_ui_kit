import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarSearchBox extends StatelessWidget {
  const CalendarSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 14.0),
      margin: const EdgeInsets.only(top: 20,left: 20,bottom: 20.0),
      width: MediaQuery.of(context).size.width * 0.5,height: 40,
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          contentPadding: const EdgeInsets.symmetric(vertical: 9),
          hintStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 16,
          ),
          border: InputBorder.none,
          icon: SvgPicture.asset('assets/icons/search.svg',color: kTextColor,),
        ),
      ),
    );
  }
}
