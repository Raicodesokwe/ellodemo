import 'package:flutter/material.dart';

import '../screens/drawing_practice.dart';
import '../utils/constants.dart';
import '../utils/navigation_utils.dart';
import 'course_selection.dart';

class NewCourses extends StatelessWidget {
  const NewCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
    openScreen(context, const DrawingPractice());
                      },
                      child:const Hero(
                         tag: artBoardHero,
                        child:  CourseSelection(label: 'Drawing\npractice',image: artpieceImage,))),
                   const CourseSelection(label: 'Learning\nto count',image: numbersboardImage,),
                  ],
                );
  }
}

