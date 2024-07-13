import 'package:fitness_tracker_app/screens/profilePageScreens/profile_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        //Back Button
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
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconRow(
                text: 'Units of Measure',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/unitsofmeasurement',
                  );
                }),
            _buildDivider(),
            IconRow(text: 'Notifications', onTap: () {}),
            _buildDivider(),
            IconRow(text: 'Language', onTap: () {}),
            _buildDivider(),
            IconRow(text: 'Contact Us', onTap: () {}),
          ],
        ),
      ),
    );
  }
}

Widget _buildDivider() {
  return Divider(
    color: Colors.grey.shade200.withOpacity(0.15),
    thickness: 1,
    height: 16,
  );
}
