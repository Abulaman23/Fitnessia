import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day6warmupAdvanced extends StatelessWidget {
  const Day6warmupAdvanced({super.key});

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
            'Saturday - Light Training',
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
                  title: '1. Bent Over Row',
                  image: 'assets/onboardingImages/Bent Over Row.jpg',
                  description: '3 sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2. Leg Extension',
                  image: 'assets/onboardingImages/Leg Extension.jpg',
                  description: '4 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Decline Abdominal Reach',
                    image:
                        'assets/onboardingImages/Decline Abdominal Reach.jpg',
                    description: '4 Sets \nRep- 8-10'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Machine Reverse Fly',
                  image: 'assets/onboardingImages/Machine Reverse Fly.jpg',
                  description: '3 Sets \nReps- 8-10',
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
