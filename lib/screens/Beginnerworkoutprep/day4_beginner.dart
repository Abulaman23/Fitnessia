import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day4warmupbeginner extends StatelessWidget {
  const Day4warmupbeginner({super.key});

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
            'Thursday- Shoulder and Abs',
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
                  title: '1.Barbell Front Raise',
                  image: 'assets/onboardingImages/Barbell Front Raise.jpg',
                  description: '3 sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Dumbbell Lateral Raise',
                  image: 'assets/onboardingImages/Dumbbell Lateral Raise.jpeg',
                  description: '3 Sets \nReps-12-15',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Military Press',
                    image: 'assets/onboardingImages/Military Press.jpg',
                    description: '3 Sets \nReps- 10-12'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Planks',
                  image: 'assets/onboardingImages/Planks.jpg',
                  description: '3 Sets \nReps- Hold for 30-60 seconds',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Side Planks',
                  image: 'assets/onboardingImages/Side Planks.jpg',
                  description: '3 Sets \nReps- 20-30s hold per side',
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
