import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day2warmup extends StatelessWidget {
  const Day2warmup({super.key});

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
            'Tuedsday-Back and Biceps',
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
                  title: '1.Wide Grip Pull Up',
                  image: 'assets/onboardingImages/Wide Grip Pull Up.jpeg',
                  description: '3 sets \nReps-MAX',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Lat Pull Down',
                  image: 'assets/onboardingImages/Lat Pull Down.jpeg',
                  description: '3 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Straight Arm Lat Pull Down',
                    image:
                        'assets/onboardingImages/Straight Arm Lat Pull Down.png',
                    description: '3 Sets \nRep-10'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Machine Reverse Fly',
                  image: 'assets/onboardingImages/Machine Reverse Fly.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Upright Row',
                  image: 'assets/onboardingImages/Upright Row.png',
                  description: '3 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. Standing Barbell Curl',
                  image: 'assets/onboardingImages/Standing Barbell Curl.jpg',
                  description: '3 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Preacher Curl',
                  image: 'assets/onboardingImages/Preacher Curl.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '8. Incline Dumbbell Curl',
                  image: 'assets/onboardingImages/Incline Dumbbell Curl.png',
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
