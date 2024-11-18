import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import 'common_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(homeBannerImage),
        Positioned(
          top: screenHeight(context) * .05,
          child: Padding(
            padding:const  EdgeInsets.only(left: 15),
            child: Column(
              children: [
            const    Text('Math classes in\n30 minutes',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),),
                SizedBox(height: screenHeight(context) * .02,),
                CommonButton(label: 'Join now',width: screenWidth(context) * .35,height: 40,)
              ],
            ),
          ),
        )
      ],
    );
  }
}

