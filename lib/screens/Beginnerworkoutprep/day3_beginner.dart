import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day3warmupbeginner extends StatelessWidget {
  const Day3warmupbeginner({super.key});

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
            'Wednesday-Leg Day',
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
                  title: '1.Seated Calf Raise',
                  image: 'assets/onboardingImages/Seated calf Raise.jpeg',
                  description: '3 sets \nReps-10,10,8(adding weight)',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Leg Curl',
                  image: 'assets/onboardingImages/Leg Curl.jpg',
                  description: '3 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Romanian Deadlift',
                    image: 'assets/onboardingImages/Romanian Deadlifts.png',
                    description: '4 Sets \nRep- 8-12'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Barbell Hip Thrusts',
                  image: 'assets/onboardingImages/Barbell Hip Thrusts.jpg',
                  description: '3 Sets \nReps- 8-12',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Nordic Hamstring Curls',
                  image: 'assets/onboardingImages/Nordic Hamstring Curl.jpeg',
                  description: '3 Sets \nReps- 6-8',
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
