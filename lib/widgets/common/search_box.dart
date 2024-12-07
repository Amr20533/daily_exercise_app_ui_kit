import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06),
      child: Container(
          margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.2),
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          height: 45,
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius:BorderRadius.circular(40)
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 9),
              icon: SvgPicture.asset('assets/icons/search.svg',color: Colors.black87,),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey[400])
            ),
          )
      ),
    );
  }
}
