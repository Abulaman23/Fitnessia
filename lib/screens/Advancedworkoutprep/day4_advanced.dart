import 'package:fitness_tracker_app/constants/color.dart';
import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day4warmupAdvanced extends StatelessWidget {
  const Day4warmupAdvanced({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Thursday - Back and Abs',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 45,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WarmupWidget(
                  title: '1. Wide Grip Pull Up',
                  image: 'assets/onboardingImages/Wide Grip Pull Up.jpeg',
                  description: '5 sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2. Lat Pull Down',
                  image: 'assets/onboardingImages/Lat Pull Down.jpeg',
                  description: '4 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Seated Row',
                    image: 'assets/onboardingImages/Seated Row.jpg',
                    description: '4 Sets \nReps-10'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. One Arm Dumbbell Row',
                  image: 'assets/onboardingImages/One Arm Dumbbell Row.png',
                  description: '3 Sets \nReps- 8',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Decline Abdominal Reach',
                  image: 'assets/onboardingImages/Decline Abdominal Reach.jpg',
                  description: '3 Sets \nReps- MAX',
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    '•Lat pull downs can be supersetted with seated row to add intensity.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: PrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
