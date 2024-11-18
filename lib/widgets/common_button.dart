import 'package:flutter/material.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';

class CommonButton extends StatelessWidget {
  final String label;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? buttonColor;
  const CommonButton({super.key,
  required this.label,
   this.height,
   this.width,
   this.fontSize,
   this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                      height:height?? 50,
                      width:width?? screenWidth(context) * .8,
                      decoration: BoxDecoration(
                        color:buttonColor?? AppColors.appPurple,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text(label,style: TextStyle(
                          color: Colors.white,
                          fontSize:fontSize?? 15
                        ),),
                      ),
                    );
  }
}