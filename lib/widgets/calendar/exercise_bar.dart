import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExerciseBar extends StatelessWidget {
  const ExerciseBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(vertical:20),
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Meditation',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w900),),
          Container(
            margin:const EdgeInsets.only(top: 10.0,bottom: 10),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(
                    offset: Offset(0,17),
                    spreadRadius: -13,
                    blurRadius: 23,
                    color: kShadowColor
                )]
            ),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  "assets/icons/Meditation_women_small.svg",
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Basic 2",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const Text("Start your deepen you practice")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset("assets/icons/Lock.svg"),
                ),
              ],
            ),
          )
        ],
      ),);
  }
}
