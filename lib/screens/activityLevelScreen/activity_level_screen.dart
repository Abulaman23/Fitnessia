import 'package:fitness_tracker_app/models/detail_page_button.dart';
import 'package:fitness_tracker_app/models/detail_page_title.dart';
import 'package:fitness_tracker_app/models/list_wheel_view_scroller.dart';
import 'package:flutter/material.dart';

class ActivityLevelPage extends StatefulWidget {
  const ActivityLevelPage({super.key});

  @override
  State<ActivityLevelPage> createState() => _ActivityLevelPageState();
}

class _ActivityLevelPageState extends State<ActivityLevelPage> {
  int selectedActivityIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Rookie',
      'Beginner',
      'Intermediate',
      'Advanced',
      'Pro',
      'True Athlete'
    ];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          top: size.width * 0.05,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.03,
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const DetailPageTitle(
              title: "What is your activity level?",
              text: "This will help us to create personalized content for you!",
              color: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.47,
              child: ListwheelScrollView(
                items: items,
                onSelectedItemChanged: (index) {
                  selectedActivityIndex = index;
                },
              ),
            ),
            DetailPageButton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, '/login',
                    arguments: items[selectedActivityIndex]);
              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
