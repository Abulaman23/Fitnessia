import 'package:fitness_tracker_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_app/models/detail_page_button.dart';
import 'package:fitness_tracker_app/models/detail_page_title.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  double weight = 60.0; //Default weight
  @override
  Widget build(BuildContext context) {
    List<String> levels = [];

    for (var i = 5; i <= 500; i++) {
      levels.add(i.isEven ? "|" : "I");
    }
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          top: size.width * 0.05,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.03,
        ),
        child: Column(
          children: [
            const DetailPageTitle(
              text: "You can change it later in the settings!",
              title: "What is your weight?",
              color: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.16,
            ),
            Text(
              '$weight kg',
              style: TextStyle(
                color: PrimaryColor,
                fontSize: size.height * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            SizedBox(
              height: size.height * 0.1,
              child: RotatedBox(
                quarterTurns: -1,
                child: ListWheelScrollView(
                  itemExtent: size.height * 0.036,
                  magnification: 1.2,
                  useMagnifier: true,
                  overAndUnderCenterOpacity: 0.35,
                  controller: FixedExtentScrollController(
                      initialItem: (weight * 2).round() - 1),
                  physics: const FixedExtentScrollPhysics(),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      weight = (index + 1) / 2;
                    });
                  },
                  children: levels.map((level) {
                    return RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        level,
                        style: TextStyle(
                          color: PrimaryColor,
                          fontSize: size.height * 0.08,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.26,
            ),
            DetailPageButton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, '/height', arguments: weight);
              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
