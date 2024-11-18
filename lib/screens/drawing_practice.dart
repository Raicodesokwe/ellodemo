
import 'package:ellodemo/utils/common_functions.dart';
import 'package:flutter/material.dart';
import '../widgets/drawing_practice_header.dart';
import '../widgets/tab_content.dart';
import '../widgets/tab_header.dart';

class DrawingPractice extends StatefulWidget {
  const DrawingPractice({super.key});

  @override
  State<DrawingPractice> createState() => _DrawingPracticeState();
}

class _DrawingPracticeState extends State<DrawingPractice> with TickerProviderStateMixin{
late TabController tabController;
    late AnimationController _slideController;
late Animation<Offset> _offsetAnimation;
final Duration animDuration = const Duration(milliseconds: 250);
@override
  void initState() {
    tabController=TabController(length: 2, vsync: this);
      _slideController =
      AnimationController(duration: const Duration(seconds: 1), vsync: this)
        ..forward();

  // Configure the SlideTransition animation
  _offsetAnimation = Tween<Offset>(begin: const Offset(0.0, 0.5), end: Offset.zero)
      .animate(CurvedAnimation(
        parent: _slideController,
        curve: Curves.easeIn,
      ));
    super.initState();
  }
  @override
  void dispose() {
   tabController.dispose();
   _slideController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor:const Color(0xFFFFECF5),
      body: CustomScrollView(
        slivers: [
         SliverAppBar(
           expandedHeight: screenHeight(context) * .3,
           automaticallyImplyLeading: false,
           flexibleSpace: const DrawingPracticeHeader(),
         ),
          SliverFillRemaining(
            child: Container(
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight(context) * .05,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: TabHeader(tabController: tabController),
                        ),
                    TabContent(tabController: tabController)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

