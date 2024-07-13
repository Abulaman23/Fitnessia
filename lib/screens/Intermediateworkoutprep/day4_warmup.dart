import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day4warmup extends StatelessWidget {
  const Day4warmup({super.key});

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
            'Thursday-Chest,Triceps \nShoulders',
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
                  description: '4 sets \nReps-10,10,8,6',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Dumbbell Flys',
                  image: 'assets/onboardingImages/Dumbbell Flys.jpg',
                  description: '3 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3.Cable Crossovers',
                    image: 'assets/onboardingImages/Cable Crossovers.jpg',
                    description: '3 Sets \nRep-10'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Close Grip Bench Press',
                  image: 'assets/onboardingImages/Close Grip Bench Press.jpg',
                  description: '4 Sets \nReps- 10,10,8,6',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Lying Dumbbell Extension',
                  image: 'assets/onboardingImages/Lying Tricep Extension.png',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. Tricep Kickback',
                  image: 'assets/onboardingImages/Tricep Kickback.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Seated Dumbbell Press',
                  image: 'assets/onboardingImages/Seated Dumbbell Press.jpg',
                  description: '4 Sets \nReps- 10,10,8,8',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '8. One Arm Cable Lateral Raise',
                  image:
                      'assets/onboardingImages/One Arm Cable Lateral Raise.jpg',
                  description: '3 Sets \nReps- 12',
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
