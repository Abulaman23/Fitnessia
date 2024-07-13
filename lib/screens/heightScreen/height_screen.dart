import 'package:fitness_tracker_app/models/detail_page_button.dart';
import 'package:fitness_tracker_app/models/detail_page_title.dart';
import 'package:fitness_tracker_app/models/list_wheel_view_scroller.dart';
import 'package:flutter/material.dart';

class HeightPage extends StatefulWidget {
  const HeightPage({super.key});

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  int selectedHeightIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (var i = 1; i < 250; i++) {
      items.add(i.toString());
    }
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        padding: EdgeInsets.only(
          top: size.width * 0.05,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.03,
        ),
        child: Column(
          children: [
            const DetailPageTitle(
              text: "This helps us to create a personalized plan for you!",
              title: "What is your height?",
              color: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.056,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: ListwheelScrollView(
                items: items,
                onSelectedItemChanged: (index) {
                  selectedHeightIndex = index;
                },
              ),
            ),
            DetailPageButton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, '/goal',
                    arguments: items[selectedHeightIndex]);
              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
