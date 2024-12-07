import 'package:daily_exercise_app/widgets/calendar/CalendarHeader.dart';
import 'package:daily_exercise_app/widgets/calendar/calendar_bg.dart';
import 'package:daily_exercise_app/widgets/calendar/calendar_search_box.dart';
import 'package:daily_exercise_app/widgets/calendar/exercise_bar.dart';
import 'package:daily_exercise_app/widgets/calendar/session_card.dart';
import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Stack(
        children: [
          CalendarBg(),
           SafeArea(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CalendarHeader(),
               CalendarSearchBox(),
               Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0),
                child: Wrap(spacing: 20,
                    runSpacing: 20,
                  children:[
                    SessionCard(sessionNum: 1,isDone: true,),
                    SessionCard(sessionNum: 2),
                    SessionCard(sessionNum:3),
                    SessionCard(sessionNum: 4),
                    SessionCard(sessionNum:5),
                    SessionCard(sessionNum:6),
                  ]
                ),
              ),
              ExerciseBar()
            ],
          )),

        ],
      ),
    );
  }
}




