import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final bool isDone;
  final int sessionNum;
  const SessionCard({required this.sessionNum,this.isDone =false,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constrains) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Container(
              width: constrains.maxWidth/2 -10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: const [BoxShadow(
                      spreadRadius: -13,
                      blurRadius: 23,
                      offset: Offset(0,17),
                      color: kShadowColor
                  )]
              ),
              child: Material(color: Colors.transparent,
                child: InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(width:42,height:42,alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isDone?kBlueColor:Colors.white,
                              border: Border.all(color: kBlueColor)
                          ),
                          child:Icon(Icons.not_started_outlined,color: isDone?Colors.white:Colors.black87,),
                        ),
                        const SizedBox(width: 10.0,),
                        Text('Session 0$sessionNum',style: const TextStyle(fontSize: 16,color: kTextColor),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
