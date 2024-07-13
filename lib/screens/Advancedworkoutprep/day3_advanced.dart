import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day3warmupAdvanced extends StatelessWidget {
  const Day3warmupAdvanced({super.key});

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
            'Wednesday - Legs and Abs',
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
                  title: '1.Squat',
                  image: 'assets/onboardingImages/Squat.jpeg',
                  description: '5 sets \nReps- 5-7',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.45 Degree Leg Press',
                  image: 'assets/onboardingImages/45 Degree Leg Press.jpeg',
                  description: '4 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Leg Extension',
                    image: 'assets/onboardingImages/Leg Extension.jpg',
                    description: '4 Sets \nRep- 8-10'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Leg Curl',
                  image: 'assets/onboardingImages/Leg Curl.jpg',
                  description: '4 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Seated calf Raise',
                  image: 'assets/onboardingImages/Seated calf Raise.jpeg',
                  description: '4 Sets \nReps- 12-15',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. 45 Degree Calf Press',
                  image: 'assets/onboardingImages/45 Degree Calf Press.jpeg',
                  description: '4 Sets \nReps- 10-12',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Hover',
                  image: 'assets/onboardingImages/Hover.jpg',
                  description: '3 Sets \nReps- As long as possible',
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
