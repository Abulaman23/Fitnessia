import 'package:fitness_tracker_app/constants/padding_margin.dart';
import 'package:fitness_tracker_app/screens/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';

class AdvancedHomePage extends StatefulWidget {
  const AdvancedHomePage({super.key});

  @override
  State<AdvancedHomePage> createState() => _AdvancedHomePageState();
}

class _AdvancedHomePageState extends State<AdvancedHomePage> {
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
            'ADVANCED WORKOUTS',
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
                    Navigator.pushNamed(context, '/day1warmupadvanced');
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
                    Navigator.pushNamed(context, '/day2warmupadvanced');
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
                      title: "Tactical Training Tuesday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day3warmupadvanced');
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
                      title: "Warrior Wednesday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day4warmupadvanced');
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
                      title: "Titan Training Thursday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day5warmupadvanced');
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
                      title: "Fierce Functional Friday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day6warmupadvanced');
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
                      image: 'assets/onboardingImages/home-4.png',
                      title: " Serenity Saturday",
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
