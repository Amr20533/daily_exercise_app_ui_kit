import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc,title;
  const CategoryCard({required this.title,required this.svgSrc,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 17,
            offset: Offset(0,17),
            color: kShadowColor
        )],
      ),
      child: Material(color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset(svgSrc,width: 90,height: 90,),
                const Spacer(),
                Text(title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
