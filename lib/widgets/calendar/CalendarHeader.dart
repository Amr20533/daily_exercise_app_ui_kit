
import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/24,left: 20,),
      child: RichText(
        text: TextSpan(
            children:[
              TextSpan(text:'Meditation\n\n',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),),
              TextSpan(text:'3-10 Min Course \n\n',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14),),
              TextSpan(text:'Live Happier & Healthier by \nlearning the fundamentals of \nmeditation & mindfullness',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize:16,color: kTextColor),),
            ]
        ),
      ),
    );
  }
}
