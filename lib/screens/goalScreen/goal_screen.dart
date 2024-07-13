import 'package:fitness_tracker_app/models/detail_page_button.dart';
import 'package:fitness_tracker_app/models/detail_page_title.dart';
import 'package:fitness_tracker_app/models/list_wheel_view_scroller.dart';
import 'package:flutter/material.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  int selectedGoalIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Lose Weight',
      'Gain Weight',
      'Stay Fit',
      'Build Muscle',
      'Improve Endurance',
      'Stay Healthy',
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
              title: "What is your Goal?",
              text: "This will help us to create personalized content for you!",
              color: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: ListwheelScrollView(
                items: items,
                onSelectedItemChanged: (index) {
                  selectedGoalIndex = index;
                },
              ),
            ),
            DetailPageButton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, '/activity',
                    arguments: items[selectedGoalIndex]);
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
