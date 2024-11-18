import 'package:flutter/material.dart';

import '../utils/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              Text('Good morning,',style: TextStyle(
                color: Colors.black54,
                fontSize: 17
              ),),
               Text('John Keen',style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontFamily: clashDisplay,
                fontSize: 22
              ),),
           ],
         ),
       const  Spacer(),
            Container(
              padding:const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.appPurple.withOpacity(.05)
              ),
              child: Stack(
                      clipBehavior: Clip.none,
                       children: [
                         const Icon(Icons.notifications,size: 35,),
                         Positioned(
                          top: -5,
                          right: -2,
                           child: Container(
                            height: 23,
                            width: 23,
                            decoration:const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                            ),
                            child:const Center(
                              child:  Text('1',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                           ),
                         )
                       ],
                     ),
            )
      ],
    );
  }
}

