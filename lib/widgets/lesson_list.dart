import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../models/lesson_model.dart';
import '../utils/constants.dart';

class LessonListWidget extends StatelessWidget {
  const LessonListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
                 children: List.generate(lessonList.length, (index) =>   AnimationConfiguration.staggeredList(
                    position: index,
                 duration: const Duration(seconds: 1),
                   child: SlideAnimation(
                    verticalOffset: 50.0, 
                     child: Padding(
                       padding: const EdgeInsets.only(bottom: 10),
                       child: ListTile(
                        tileColor: AppColors.appPurple.withOpacity(.05),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        leading: Container(
                          padding: const EdgeInsets.all(9),
                          decoration:const BoxDecoration(
                            color: AppColors.appLightPurple,
                            shape: BoxShape.circle
                          ),
                          child:const Icon(Icons.play_arrow_rounded,color: Colors.white,),
                        ),
                        title: Text(lessonList[index].lessonName),
                        subtitle:  Text(lessonList[index].lessonTime),
                        trailing:const Icon(Icons.keyboard_arrow_right),
                       ),
                     ),
                   ),
                 ),)
                 
      
      ),
    );
  }
}

