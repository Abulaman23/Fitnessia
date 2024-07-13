import 'package:fitness_tracker_app/constants/color.dart';
import 'package:fitness_tracker_app/constants/padding_margin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> workoutCategories = ["Beginner", "Intermediate", "Advanced"];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String formattedDate = DateFormat('EEE, d MMM').format(DateTime.now());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.04),
          child: Container(
            padding: AppPadding.horizontalPadding(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello User",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.005),
                Text(
                  "Good Morning",
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's workout plan",
                      style: TextStyle(
                        fontSize: size.width * 0.046,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      formattedDate,
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        color: PrimaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ImageStack(
                    size: size,
                    image: 'assets/onboardingImages/home1.jpg',
                    title: "Day 01 - Warm Up",
                    time: "| 9:00 AM - 10:00 AM",
                  ),
                ),
                SizedBox(height: size.height * .04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Workout Categories",
                      style: TextStyle(
                        fontSize: size.width * 0.046,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/workoutCategories');
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: PrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                SizedBox(height: size.height * 0.02),
                SizedBox(
                  height: size.height * 0.2,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: size.width * 0.8,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                          size: size,
                          image: 'assets/onboardingImages/home2.jpg',
                          title: "Day 01 - Warm Up",
                          time: "| 9:00 AM - 10:00 AM",
                        ),
                      ),
                      SizedBox(width: size.width * 0.04),
                      Container(
                        width: size.width * 0.8,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                          size: size,
                          image: 'assets/onboardingImages/home3.png',
                          title: "Day 02 - Warm Up",
                          time: "| 10:00 AM - 11:00 AM",
                        ),
                      ),
                      SizedBox(width: size.width * 0.04),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Text(
                  "New Workout",
                  style: TextStyle(
                    fontSize: size.width * 0.045,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  width: size.width,
                  height: size.height * 0.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                            size: size,
                            title: "Day 01 - Warm Up",
                            time: "| 9:00 AM - 10:00 AM",
                            image: 'assets/onboardingImages/home-4.png'),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ImageStack(
                            size: size,
                            title: "Day 02 - Warm Up",
                            time: "| 9:00 AM - 10:00 AM",
                            image: 'assets/onboardingImages/home5.jpeg'),
                      ),
                      SizedBox(
                        width: size.width * 0.04,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageStack extends StatelessWidget {
  const ImageStack(
      {super.key,
      required this.size,
      required this.image,
      required this.title,
      required this.time});

  final Size size;
  final String image;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.2,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          left: size.width * 0.046,
          top: size.height * 0.12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: size.width * 0.035,
                  color: PrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
