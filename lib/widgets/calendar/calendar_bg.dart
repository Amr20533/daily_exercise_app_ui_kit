import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';

class CalendarBg extends StatelessWidget {
  const CalendarBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: const BoxDecoration(
        color: kBlueLightColor,
        image: DecorationImage(
            image:AssetImage('assets/images/meditation_bg.png'),fit: BoxFit.fitWidth
        ),
      ),
    );
  }
}
