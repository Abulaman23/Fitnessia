import 'package:fitness_tracker_app/provider/auth_provider.dart';
import 'package:fitness_tracker_app/provider/pedometer_provider.dart';
import 'package:fitness_tracker_app/provider/user_provider.dart';
import 'package:fitness_tracker_app/provider/workout_provider_data.dart';
import 'package:fitness_tracker_app/screens/Advancedworkoutprep/day1_advanced.dart';
import 'package:fitness_tracker_app/screens/Advancedworkoutprep/day2_advanced.dart';
import 'package:fitness_tracker_app/screens/Advancedworkoutprep/day3_advanced.dart';
import 'package:fitness_tracker_app/screens/Advancedworkoutprep/day4_advanced.dart';
import 'package:fitness_tracker_app/screens/Advancedworkoutprep/day5_advanced.dart';
import 'package:fitness_tracker_app/screens/Advancedworkoutprep/day6_advanced.dart';
import 'package:fitness_tracker_app/screens/Beginnerworkoutprep/day1_beginner.dart';
import 'package:fitness_tracker_app/screens/Beginnerworkoutprep/day2_beginner.dart';
import 'package:fitness_tracker_app/screens/Beginnerworkoutprep/day3_beginner.dart';
import 'package:fitness_tracker_app/screens/Beginnerworkoutprep/day4_beginner.dart';
import 'package:fitness_tracker_app/screens/Intermediateworkoutprep/day1_warmup.dart';
import 'package:fitness_tracker_app/screens/Intermediateworkoutprep/day2_warmup.dart';
import 'package:fitness_tracker_app/screens/Intermediateworkoutprep/day3_warmup.dart';
import 'package:fitness_tracker_app/screens/Intermediateworkoutprep/day4_warmup.dart';
import 'package:fitness_tracker_app/screens/Intermediateworkoutprep/day5_warmup.dart';
import 'package:fitness_tracker_app/screens/activityLevelScreen/activity_level_screen.dart';
import 'package:fitness_tracker_app/screens/ageScreen/age_screen.dart';
import 'package:fitness_tracker_app/screens/genderScreen/gender_screen.dart';
import 'package:fitness_tracker_app/screens/goalScreen/goal_screen.dart';
import 'package:fitness_tracker_app/screens/heightScreen/height_screen.dart';
import 'package:fitness_tracker_app/screens/homeScreen/advanced_home_screen.dart';
import 'package:fitness_tracker_app/screens/homeScreen/bottom_nav_bar.dart';
import 'package:fitness_tracker_app/screens/homeScreen/home_screen.dart';
import 'package:fitness_tracker_app/screens/homeScreen/intermediate_home_screen.dart';
import 'package:fitness_tracker_app/screens/homeScreen/notification_page.dart';
import 'package:fitness_tracker_app/screens/loginSignUp/forgot_password_screen.dart';
import 'package:fitness_tracker_app/screens/loginSignUp/login_signup_page.dart';
import 'package:fitness_tracker_app/screens/onBoardingScreen/on_boarding_screen.dart';
import 'package:fitness_tracker_app/screens/profilePageScreens/privacy_policy_screen.dart';
import 'package:fitness_tracker_app/screens/profilePageScreens/profile_page.dart';
import 'package:fitness_tracker_app/screens/profilePageScreens/settings_screen.dart';
import 'package:fitness_tracker_app/screens/profilePageScreens/units_of_measurement_screen.dart';
import 'package:fitness_tracker_app/screens/weightScreen/weight_screen.dart';
import 'package:fitness_tracker_app/screens/workout_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await requestPermissions();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PedometerProvider()),
        ChangeNotifierProvider(create: (context) => WorkoutData()),
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(
            create: (context) => AuthProvider(context.read<UserProvider>())),
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> requestPermissions() async {
  if (await Permission.activityRecognition.isDenied) {
    await Permission.activityRecognition.request();
  }

  if (await Permission.sensors.isDenied) {
    await Permission.sensors.request();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: {
        '/onboarding': (context) => const OnBoardingScreen(),
        '/gender': (context) => const GenderPage(),
        '/age': (context) => const AgePage(),
        '/height': (context) => const HeightPage(),
        '/weight': (context) => const WeightPage(),
        '/activity': (context) => const ActivityLevelPage(),
        '/goal': (context) => const GoalPage(),
        '/forgotpassword': (context) => const ForgotPassword(),
        '/workoutCategories': (context) => const WorkoutCategories(),
        '/login': (context) => const SignUp(),
        '/home': (context) => const HomePage(),
        '/notifications': (context) => const NotificationPage(),
        '/bottomNavigationBar': (context) => const HomePageNavBar(),
        '/profile': (context) => const ProfilePage(),
        '/privacyPolicy': (context) => const PrivacyPolicyPage(),
        '/settingsPage': (context) => const SettingsPage(),
        '/unitsofmeasurement': (context) => const UnitsOfMeasurementScreen(),
        '/intermediatehomescreen': (context) => const IntermediateHomePage(),
        '/advancedhomescreen': (context) => const AdvancedHomePage(),
        '/day1warmupintermediate': (context) => const Day1warmup(),
        '/day2warmupintermediate': (context) => const Day2warmup(),
        '/day3warmupintermediate': (context) => const Day3warmup(),
        '/day4warmupintermediate': (context) => const Day4warmup(),
        '/day5warmupintermediate': (context) => const Day5warmup(),
        '/day1warmupadvanced': (context) => const Day1warmupAdvanced(),
        '/day2warmupadvanced': (context) => const Day2warmupAdvanced(),
        '/day3warmupadvanced': (context) => const Day3warmupAdvanced(),
        '/day4warmupadvanced': (context) => const Day4warmupAdvanced(),
        '/day5warmupadvanced': (context) => const Day5warmupAdvanced(),
        '/day6warmupadvanced': (context) => const Day6warmupAdvanced(),
        '/day1warmupbeginner': (context) => const Day1warmupbeginner(),
        '/day2warmupbeginner': (context) => const Day2warmupbeginner(),
        '/day3warmupbeginner': (context) => const Day3warmupbeginner(),
        '/day4warmupbeginner': (context) => const Day4warmupbeginner(),
      },
      home: const OnBoardingScreen(),
    );
  }
}
