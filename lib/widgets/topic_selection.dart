import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';

class TopicSelection extends StatelessWidget {
  final String label;
  final String image;
  final Color imageColor;
  const TopicSelection({
    super.key,
    required this.label,
    required this.imageColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20
        ),
        decoration: BoxDecoration(
          color: AppColors.appLightPurple.withOpacity(.1),
          borderRadius:  BorderRadius.circular(30)
        ),child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(9),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: SizedBox(
                height: 25,
                width: 25,
                child: SvgPicture.asset(image,
                colorFilter:  ColorFilter.mode(
          imageColor, // Set the desired color here
          BlendMode.srcIn, // Ensures the color is applied correctly
        ),
                ))),
                const SizedBox(width: 5,),
                Text(label)
          ],
        ),
      
      ),
    );
  }
}