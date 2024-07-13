import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day2warmupbeginner extends StatelessWidget {
  const Day2warmupbeginner({super.key});

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
            'Tuesday-Back and Biceps',
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
                  title: '1.Bent-Over Barbell Rows',
                  image: 'assets/onboardingImages/Bent Over Barbell Row.jpg',
                  description: '4 sets \nReps- 8-12',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2. Pull-Ups',
                  image: 'assets/onboardingImages/Pull Ups.jpg',
                  description: '3 Sets \nReps- 6-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Barbell Curls',
                    image: 'assets/onboardingImages/Barbell Wrist Curl.jpg',
                    description: '3 Sets \nRep-MAX'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Preacher Curls',
                  image: 'assets/onboardingImages/Preacher Curl.jpg',
                  description: '3 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. One Arm Dumbbell Extension',
                  image:
                      'assets/onboardingImages/One Arm Dumbbell Extension.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
