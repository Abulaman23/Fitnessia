import 'package:fitness_tracker_app/constants/padding_margin.dart';
import 'package:fitness_tracker_app/screens/homeScreen/home_screen.dart';

import 'package:flutter/material.dart';

class IntermediateHomePage extends StatefulWidget {
  const IntermediateHomePage({super.key});

  @override
  State<IntermediateHomePage> createState() => _IntermediateHomePageState();
}

class _IntermediateHomePageState extends State<IntermediateHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
            'INTERMEDIATE WORKOUTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: AppPadding.horizontalPadding(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day1warmupintermediate');
                  },
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ImageStack(
                      size: size,
                      image: 'assets/onboardingImages/home1.jpg',
                      title: "Mighty Muscle Monday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day2warmupintermediate');
                  },
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ImageStack(
                      size: size,
                      image: 'assets/onboardingImages/home2.jpg',
                      title: "Toned-Up Tuesday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day3warmupintermediate');
                  },
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ImageStack(
                      size: size,
                      image: 'assets/onboardingImages/home3.png',
                      title: "Wild Card Wednesday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day4warmupintermediate');
                  },
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ImageStack(
                      size: size,
                      image: 'assets/onboardingImages/home6.jpg',
                      title: "Thunder Thighs Thursday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day5warmupintermediate');
                  },
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ImageStack(
                      size: size,
                      image: 'assets/onboardingImages/home5.jpeg',
                      title: "Flex Friday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
