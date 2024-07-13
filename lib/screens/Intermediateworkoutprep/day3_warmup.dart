import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day3warmup extends StatelessWidget {
  const Day3warmup({super.key});

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
            'Wednesday-Legs',
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
                  title: '1.Squats',
                  image: 'assets/onboardingImages/Squat.jpeg',
                  description: '4 sets \nReps-10,10,8,8',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Dumbbell Lunge',
                  image: 'assets/onboardingImages/Dumbbell Lunge.jpeg',
                  description: '3 Sets \nReps-8 on each leg',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. 45 Degree Leg Press',
                    image: 'assets/onboardingImages/45 Degree Leg Press.jpeg',
                    description: '3 Sets \nRep-12'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Leg Curl',
                  image: 'assets/onboardingImages/Leg Curl.jpg',
                  description: '3 Sets \nReps- 15',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Leg Extension',
                  image: 'assets/onboardingImages/Leg Extension.jpg',
                  description: '3 Sets \nReps- 15',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. Standing Calf Raise',
                  image: 'assets/onboardingImages/Standing Calf Raise.jpeg',
                  description: '5 Sets \nReps- 10,8,8,8,6(heavy)',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Seated calf Raise',
                  image: 'assets/onboardingImages/Seated calf Raise.jpeg',
                  description: '5 Sets \nReps- 15(light)',
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
