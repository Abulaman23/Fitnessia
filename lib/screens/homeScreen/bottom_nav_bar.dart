import 'package:fitness_tracker_app/constants/color.dart';
import 'package:fitness_tracker_app/screens/homeScreen/home_screen.dart';
import 'package:fitness_tracker_app/screens/homeScreen/notification_page.dart';
import 'package:fitness_tracker_app/screens/homeScreen/workout_progress_screen.dart';
import 'package:fitness_tracker_app/screens/profilePageScreens/profile_page.dart';
import 'package:flutter/material.dart';

class HomePageNavBar extends StatefulWidget {
  const HomePageNavBar({super.key});

  @override
  State<HomePageNavBar> createState() => _HomePageNavBarState();
}

class _HomePageNavBarState extends State<HomePageNavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    WorkoutProgressPage(),
    NotificationPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.poll), label: 'Progress'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_active_outlined),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: PrimaryColor,
            unselectedItemColor: Colors.grey,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
