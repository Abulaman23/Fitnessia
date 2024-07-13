import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day2warmupAdvanced extends StatelessWidget {
  const Day2warmupAdvanced({super.key});

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
            'Tuesday - Arms and Abs',
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
                  title: '1.Standing Barbell Curl',
                  image: 'assets/onboardingImages/Standing Barbell Curl.jpg',
                  description: '4 sets \nReps-8',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Preacher Curls',
                  image: 'assets/onboardingImages/Preacher Curl.jpg',
                  description: '4 Sets \nReps-8',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Cable Curl',
                    image: 'assets/onboardingImages/Cable Curl.jpeg',
                    description: '4 Sets \nRep-8'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Close Grip Bench Press',
                  image: 'assets/onboardingImages/Close Grip Bench Press.jpg',
                  description: '4 Sets \nReps- 6',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Tricep Dip',
                  image: 'assets/onboardingImages/Tricep Dip.jpeg',
                  description: '3 Sets \nReps- 10+(MAX)',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. Lying Tricep Extension (skullcrusher)',
                  image: 'assets/onboardingImages/Lying Tricep Extension.png',
                  description: '4 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Barbell Wrist Curl',
                  image: 'assets/onboardingImages/Barbell Wrist Curl.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '8. Hanging Leg Raise',
                  image: 'assets/onboardingImages/Hanging Leg Raise.jpg',
                  description: '3 Sets \nReps- MAX',
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
