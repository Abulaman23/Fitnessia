import 'package:fitness_tracker_app/constants/color.dart';
import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day1warmupAdvanced extends StatelessWidget {
  const Day1warmupAdvanced({super.key});

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
            'Monday-Shoulders and Abs',
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
                  title: '1.Military Press',
                  image: 'assets/onboardingImages/Military Press.jpg',
                  description: '4 sets \nReps-8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Barbell Front Raise',
                  image: 'assets/onboardingImages/Barbell Front Raise.jpg',
                  description: '3 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Upright Row',
                    image: 'assets/onboardingImages/Upright Row.png',
                    description: '4 Sets \nRep-8'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Dumbbell Lateral Raise',
                  image: 'assets/onboardingImages/Dumbbell Lateral Raise.jpeg',
                  description: '4 Sets \nReps- 8',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Dumbbell Reverse Fly',
                  image: 'assets/onboardingImages/Dumbbell Reverse Fly.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. Decline Sit Ups',
                  image: 'assets/onboardingImages/Decline Sit Ups.jpg',
                  description: '3 Sets \nReps- MAX',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Dumbbell Lateral Raise',
                  image: 'assets/onboardingImages/Dumbbell Lateral Raise.jpeg',
                  description: '4 Sets \nReps- 15,12,8,8(adding weight)',
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '•Dumbbell lateral raises can be supersetted with upright rows.\n•Hold a weight plate on your chest for decline sit ups if bodyweight is not challenging enough.',
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
