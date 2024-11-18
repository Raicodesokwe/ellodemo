import 'package:flutter/material.dart';

import '../models/drawing_practice_model.dart';
import '../utils/constants.dart';
import 'common_button.dart';

class TabContent extends StatelessWidget {
  const TabContent({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: TabBarView(
      controller: tabController,
      children: [
        Stack(
          children: [
            Column(children: List.generate(drawingPracticeList.length, (index) => 
            Padding(
             padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                 leading: Container(
                         padding: const EdgeInsets.all(9),
                         decoration: BoxDecoration(
                           color:drawingPracticeList[index].isWatched?AppColors.appLightPurple
                           : AppColors.appLightPurple.withOpacity(.1),
                           shape: BoxShape.circle
                         ),
                         child: Icon(Icons.play_arrow_rounded,color:drawingPracticeList[index].isWatched?
                          Colors.white:AppColors.appLightPurple,
                          size: 35,
                          ),
                       ),
                         title: Text(drawingPracticeList[index].label),
                       subtitle:  Text(drawingPracticeList[index].time),
                       trailing: Container(
                         padding: const EdgeInsets.all(15),
                         decoration: BoxDecoration(
                           color:drawingPracticeList[index].isWatched?AppColors.appBrown
                           : AppColors.appBrown.withOpacity(.1),
                           shape: BoxShape.circle
                         ),
                         child: Icon(Icons.lock,color:drawingPracticeList[index].isWatched?
                          Colors.white:AppColors.appBrown,
                          size: 25,
                          ),
                       ),
              ),
            )),),
           const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:  EdgeInsets.only(bottom: 20),
                child: CommonButton(
                  fontSize: 16,
                  buttonColor: Color(0xFF9272F1),
                  label: 'Start learning'),
              ))
          ],
        ),
               const SizedBox.shrink()
    ]));
  }
}