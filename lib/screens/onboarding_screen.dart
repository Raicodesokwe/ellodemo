import 'package:ellodemo/screens/home_screen.dart';
import 'package:ellodemo/utils/common_functions.dart';
import 'package:ellodemo/utils/navigation_utils.dart';
import 'package:ellodemo/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(logoImage),
             const Text('Ello',style: TextStyle(fontFamily: clashDisplay,fontWeight: FontWeight.w700,fontSize: 35),),
             
            ],
          ),
          Stack(
            children: [
              SizedBox(
                height: screenHeight(context) * .85,
                child: SvgPicture.asset(happyKidImage)),
                Positioned(
                  top: screenHeight(context) * .48,
                  left: screenWidth(context) * .09,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                       Text('Let\'s learn with',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth(context) * .1
                       ),),
                       Text('Lots of fun',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth(context) * .075
                       ),), 
                       
                       SizedBox(
                        width: screenWidth(context) * .4,
                         child: Text('Learning with us will be fun and make you happy',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth(context) * .04
                         ),),
                       ),
                         SizedBox(
                  height: screenHeight(context) * .065,),
                  GestureDetector(
                    onTap: (){
                      openScreen(context, const HomeScreen());
                    },
                    child:const CommonButton(label: 'Get Started'),
                  )
                    ],
                  ),
                )
            ],
          ),
        ],
      ),
    ));
  }
}