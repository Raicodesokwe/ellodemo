
import 'package:ellodemo/utils/common_functions.dart';
import 'package:ellodemo/utils/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/home_banner.dart';
import '../widgets/home_header.dart';
import '../widgets/lesson_list.dart';
import '../widgets/new_courses.dart';
import '../widgets/topic_selection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
   late AnimationController controller;
  late Animation<double> fadeAnimation;
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
   controller =
        AnimationController(vsync: this, duration:const Duration(milliseconds: 200));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    scaleAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.elasticInOut);
    Future.delayed(const Duration(milliseconds: 600), () {
      controller.forward().then((value) => scaleController.forward());
    });
    super.initState();
   
  }

  @override
  void dispose() {
    controller.dispose();
    scaleController.dispose();
    super.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: FadeTransition(
        opacity: fadeAnimation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight(context) * .03,
                ),
            const  HomeHeader(),
              SizedBox(height: screenHeight(context) * .015,),
           const HomeBanner(),
            
                    SizedBox(
              height: 100,
              child:   SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ScaleTransition(
                  scale: scaleAnimation,
                  child:const Row(
                      children: [
                        TopicSelection(label: 'Math',image: calculatorImage,imageColor: Color(0xFFEBBCA1),),
                        TopicSelection(label: 'Science',image: scienceImage,imageColor: Color(0xFF3676AA),),
                        TopicSelection(label: 'Creative Arts',image: lightbulbImage,imageColor: Colors.red,),
                      ],
                    ),
                ),
              ),
            ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                    const Text('New course',style: TextStyle(
                  fontFamily: clashDisplay,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 22
                ),),
                TextButton(onPressed: (){},style: ButtonStyle(
                  foregroundColor:  MaterialStateProperty.all(const Color(0xFF76BBF3)), // Sets text color to blue
                ), child:const Text('See more'))
            ],
                  ),
                    ScaleTransition(
                      scale: scaleAnimation,
                      child: const NewCourses(),
                    ),
                 const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10),
            child:  Align(
              alignment: Alignment.centerLeft,
               child:  Text('Lessons Completed',style:  TextStyle(
                      fontFamily: clashDisplay,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 22
                    ),),
             ),
                  ),
                 const  LessonListWidget(),
                   const SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

