import 'package:fitness_tracker_app/models/detail_page_button.dart';
import 'package:fitness_tracker_app/models/detail_page_title.dart';
import 'package:fitness_tracker_app/models/list_wheel_view_scroller.dart';
import 'package:fitness_tracker_app/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AgePage extends StatefulWidget {
  const AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  int selectedAgeIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (var i = 1; i < 100; i++) {
      items.add(i.toString());
    }
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ChangeNotifierProvider<UserProvider>(
        create: (context) => UserProvider(),
        child: Consumer<UserProvider>(builder: (context, userProvider, _) {
          return Container(
            padding: EdgeInsets.only(
              top: size.width * 0.05,
              left: size.width * 0.05,
              right: size.width * 0.05,
              bottom: size.width * 0.03,
            ),
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                const DetailPageTitle(
                  title: "How old are you?",
                  text:
                      "This will help us to create personalized content for you!",
                  color: Colors.white,
                ),
                SizedBox(
                  height: size.height * 0.055,
                ),
                SizedBox(
                  height: size.height * 0.5,
                  child: ListwheelScrollView(
                    items: items,
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedAgeIndex = index;
                      });
                    },
                  ),
                ),
                DetailPageButton(
                  text: "Next",
                  onTap: () {
                    userProvider.setAge(int.parse(items[selectedAgeIndex]));
                    Navigator.pop(context, items[selectedAgeIndex]);
                    Navigator.pushNamed(context, '/weight');
                  },
                  showBackButton: true,
                  onBackTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
