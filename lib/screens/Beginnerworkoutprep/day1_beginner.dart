import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day1warmupbeginner extends StatelessWidget {
  const Day1warmupbeginner({super.key});

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
            'Monday-Chest and Triceps',
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
                  title: '1.Barbell Bench Press',
                  image: 'assets/onboardingImages/Barbell Bench Press.jpg',
                  description: '3 sets \nReps- 8-12',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Dumbbell Flyes',
                  image: 'assets/onboardingImages/Dumbbell Flys.jpg',
                  description: '3 Sets \nReps-10-15',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Incline Dumbbell Press',
                    image:
                        'assets/onboardingImages/inclined_dumbbell_bench_press.jpeg',
                    description: '4 Sets \nRep- 8-12'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Lying Tricep Extension',
                  image: 'assets/onboardingImages/Lying Tricep Extension.png',
                  description: '3 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Tricep Dips',
                  image: 'assets/onboardingImages/Tricep Dip.jpeg',
                  description: '4 Sets \nReps- 8-12',
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
