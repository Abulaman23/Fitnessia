import 'package:fitness_tracker_app/constants/color.dart';
import 'package:fitness_tracker_app/constants/padding_margin.dart';
import 'package:fitness_tracker_app/screens/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';

class WorkoutCategories extends StatefulWidget {
  const WorkoutCategories({super.key});

  @override
  State<WorkoutCategories> createState() => _WorkoutCategoriesState();
}

class _WorkoutCategoriesState extends State<WorkoutCategories> {
  List<String> workoutCategories = ["Beginner", "Intermediate", "Advanced"];
  int selectedCategory = 0;
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
            'Workout Categories',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
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
                ToggleButtons(
                  isSelected: List.generate(workoutCategories.length,
                      (index) => index == selectedCategory),
                  onPressed: (int index) {
                    setState(() {
                      selectedCategory = index;
                    });
                    if (index == 1) {
                      Navigator.pushNamed(context, '/intermediatehomescreen');
                    } else if (index == 2) {
                      Navigator.pushNamed(context, '/advancedhomescreen');
                    }
                  },
                  borderRadius: BorderRadius.circular(10),
                  selectedColor: Colors.black,
                  fillColor: PrimaryColor,
                  color: Colors.white,
                  children: workoutCategories.map((category) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCategory ==
                                workoutCategories.indexOf(category)
                            ? PrimaryColor
                            : Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            category,
                            style: TextStyle(
                              color: selectedCategory ==
                                      workoutCategories.indexOf(category)
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  'BEGINNER WORKOUTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day1warmupbeginner');
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
                      title: "Monday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day2warmupbeginner');
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
                      title: "Tuesday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day3warmupbeginner');
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
                      title: "Wednesday",
                      time: "| 9:00 AM - 10:00 AM",
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/day4warmupbeginner');
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
                      title: "Thursday",
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
