import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/common_functions.dart';

class CourseSelection extends StatelessWidget {
  final String label;
  final String image;
  const CourseSelection({
    super.key,
    required this.label,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: screenWidth(context) * .42,
          child: SvgPicture.asset(image)),
        Positioned(
          top: screenHeight(context) * .05,
          left: screenWidth(context) * .05,
          child: Text(label,style:  TextStyle(
            fontSize: screenWidth(context) * .06,
            fontWeight: FontWeight.w600,
            color: Colors.black87
          ),))
      ],
    );
  }
}

