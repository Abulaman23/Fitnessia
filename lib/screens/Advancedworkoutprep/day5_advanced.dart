import 'package:fitness_tracker_app/constants/color.dart';
import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day5warmupAdvanced extends StatelessWidget {
  const Day5warmupAdvanced({super.key});

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
            'Friday - Chest and Abs',
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
                  title: '1. Barbell Bench Press',
                  image: 'assets/onboardingImages/Barbell Bench Press.jpg',
                  description: '5 sets \nReps- 6-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2. Incline Bench Press',
                  image:
                      'assets/onboardingImages/inclined_dumbbell_bench_press.jpeg',
                  description: '4 Sets \nReps-8',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Chest Dip',
                    image: 'assets/onboardingImages/Chest_dip.jpg',
                    description: '4 Sets \nReps-8'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Dumbbell Flys',
                  image: 'assets/onboardingImages/Dumbbell Flys.jpg',
                  description: '4 Sets \nReps- 10-12',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Exercise Ball Crunch',
                  image: 'assets/onboardingImages/Exercise Ball Crunch.png',
                  description: '3 Sets \nReps- 20',
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    '•Barbell Bench can be supersetted with Incline Dumbbell Flys.\n•Dumbbell Flys: You can do these on either flat bench of incline depending on what part of the chest you want to hit.',
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
