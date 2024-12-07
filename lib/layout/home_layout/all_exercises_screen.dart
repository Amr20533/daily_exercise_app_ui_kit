import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/all_exercise/category_card.dart';
import '../../widgets/common/search_box.dart';
class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.45,

          decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png')
              )
          ),

        ),
        SafeArea(child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: Column(children: [
            Align(alignment: Alignment.topRight,
              child: Container(
              alignment: Alignment.center,
              width: 35,height: 35,
              decoration: const BoxDecoration(
                color: kLightOrangeColor,
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset('assets/icons/menu.svg'),
              ),
            )]),
        )),
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08, left: MediaQuery.of(context).size.width * 0.06),
          child: Text('Good Morning, \nShishir',style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w600, fontSize: 26),textAlign: TextAlign.start,),
        ),
        const SearchBox(),
        Expanded(
          child:Padding(
            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.34,right: 20,left: 20),
            child: GridView.count(crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              children: const [
                CategoryCard(title: 'Diet Recommendation', svgSrc: 'assets/icons/Hamburger.svg'),
                CategoryCard(title: 'Kagel Exercising', svgSrc: 'assets/icons/Excrecises.svg'),
                CategoryCard(title: 'Meditation', svgSrc: 'assets/icons/Meditation.svg'),
                CategoryCard(title: 'Yoga', svgSrc: 'assets/icons/yoga.svg'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
