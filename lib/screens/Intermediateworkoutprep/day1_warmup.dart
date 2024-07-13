import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day1warmup extends StatelessWidget {
  const Day1warmup({super.key});

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
            'Monday-Chest, Shoulder and \nTriceps',
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
                  title: '1.Dumbbell Bench Press',
                  image: 'assets/onboardingImages/dumbbell_bench_press.png',
                  description: '3 sets \nReps-10,10,8(adding weight)',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Inclined Dumbbell Bench Press',
                  image:
                      'assets/onboardingImages/inclined_dumbbell_bench_press.jpeg',
                  description: '3 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Chest Dip',
                    image: 'assets/onboardingImages/Chest_dip.jpg',
                    description: '3 Sets \nRep-MAX'),
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
                  title: '5. One Arm Dumbbell Extension',
                  image:
                      'assets/onboardingImages/One Arm Dumbbell Extension.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. Tricep Extension',
                  image: 'assets/onboardingImages/Tricep Extension.jpeg',
                  description: '3 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Barbell Front raise',
                  image: 'assets/onboardingImages/Barbell Front Raise.jpg',
                  description: '4 Sets \nReps- 12',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '8. Dumbbell Lateral Raise',
                  image: 'assets/onboardingImages/Dumbbell Lateral Raise.jpeg',
                  description: '4 Sets \nReps- 15,12,8,8(adding weight)',
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
