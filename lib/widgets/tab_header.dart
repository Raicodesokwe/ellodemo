import 'package:flutter/material.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';

class TabHeader extends StatelessWidget {
  const TabHeader({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
                      width: screenWidth(context),
                      decoration: BoxDecoration(
    color: Colors.grey.shade100,
    borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
    Padding(
      padding: const EdgeInsets.all(5),
      child: TabBar(
        labelStyle:const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
       dividerColor: Colors.transparent,
        unselectedLabelColor: Colors.black54,
        labelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: AppColors.appPurple,
          borderRadius: BorderRadius.circular(30),
        ),
        controller: tabController,
        tabs:const [
           Tab(
            text: 'Playlist',
          ),
          Tab(
            text: 'Description',
          ),
         
        ],
      ),
    ),
                        ],
                      ),
                    );
  }
}

