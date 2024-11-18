import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import '../utils/navigation_utils.dart';

class DrawingPracticeHeader extends StatelessWidget {
  const DrawingPracticeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: double.infinity,
     child: Stack(
       children: [
         Hero(
           tag: artBoardHero, // Unique tag for Hero animation
           child: SvgPicture.asset(artboardBanner,fit: BoxFit.cover,)),
         Positioned(
           top: screenHeight(context) *.05,
           left: screenWidth(context) * .05,
           child: GestureDetector(
             onTap: (){
               navigationPop(context);
             },
             child: Container(
             height: 50,
             width: 50,
             decoration:const BoxDecoration(
               color: Colors.white,
               shape: BoxShape.circle
             ),
             child:const Icon(Icons.keyboard_arrow_left),
                             ),
           )),
             Positioned(
           top: screenHeight(context) *.05,
           right: screenWidth(context) * .05,
           child: Container(
           height: 50,
           width: 50,
           decoration:const BoxDecoration(
             color: Colors.white,
             shape: BoxShape.circle
           ),
           child:const Icon(Icons.bookmark),
                           )),  
                           
             Positioned(
           top: screenHeight(context) *.05,
           right: screenWidth(context) * .37,
           child:const Text('Drawing\nPractice',style: TextStyle(
             fontWeight: FontWeight.w600,
             fontSize: 30,
             color: Colors.black87
           ),)),
       ],
     ));
  }
}

