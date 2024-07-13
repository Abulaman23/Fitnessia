import 'package:fitness_tracker_app/constants/color.dart';
import 'package:flutter/material.dart';

class ListwheelScrollView extends StatefulWidget {
  final List<String> items;
  final ValueChanged<int> onSelectedItemChanged;
  const ListwheelScrollView(
      {super.key, required this.items, required this.onSelectedItemChanged});

  @override
  State<ListwheelScrollView> createState() => _ListwheelScrollViewState();
}

class _ListwheelScrollViewState extends State<ListwheelScrollView> {
  int selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return ListWheelScrollView(
      magnification: 1.3,
      useMagnifier: true,
      overAndUnderCenterOpacity: 0.22,
      physics: const FixedExtentScrollPhysics(),
      onSelectedItemChanged: (index) {
        setState(() {
          selectedItemIndex = index;
        });
        widget.onSelectedItemChanged(index);
      },
      controller:
          FixedExtentScrollController(initialItem: widget.items.length ~/ 2),
      itemExtent: 55,
      diameterRatio: 1.5,
      children: widget.items.map((level) {
        return Text(
          level,
          style: const TextStyle(
            fontSize: 30,
            color: PrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        );
      }).toList(),
    );
  }
}
