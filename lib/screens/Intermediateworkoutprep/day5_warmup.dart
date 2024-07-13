import 'package:fitness_tracker_app/models/warmup_exerciseperday_widget.dart';
import 'package:flutter/material.dart';

class Day5warmup extends StatelessWidget {
  const Day5warmup({super.key});

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
            'Friday-Back and Biceps',
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
                  title: '1.Seated Row',
                  image: 'assets/onboardingImages/Seated Row.jpg',
                  description: '4 sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '2.Bent Over Barbell Row',
                  image: 'assets/onboardingImages/Bent Over Barbell Row.jpg',
                  description: '3 Sets \nReps-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                    title: '3. Bent Over Row',
                    image: 'assets/onboardingImages/Bent Over Row.jpg',
                    description: '3 Sets \nRep-12'),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '4. Smith Machine Upright Row',
                  image:
                      'assets/onboardingImages/Smith Machine Upright Row.png',
                  description: '3 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '5. Cable Curl',
                  image: 'assets/onboardingImages/Cable Curl.jpeg',
                  description: '4 Sets \nReps- 8-10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '6. Concentration Curl',
                  image: 'assets/onboardingImages/Concentration Curl.jpg',
                  description: '3 Sets \nReps- 10',
                ),
                SizedBox(
                  height: 40,
                ),
                WarmupWidget(
                  title: '7. Reverse Barbell Curl',
                  image: 'assets/onboardingImages/Reverse Barbell Curl.png',
                  description: '3 Sets \nReps- 10',
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
