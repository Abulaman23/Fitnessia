import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class UnitsOfMeasurementScreen extends StatefulWidget {
  const UnitsOfMeasurementScreen({super.key});

  @override
  State<UnitsOfMeasurementScreen> createState() =>
      _UnitsOfMeasurementScreenState();
}

class _UnitsOfMeasurementScreenState extends State<UnitsOfMeasurementScreen> {
  bool isMetricChecked = false;
  bool isImperialChecked = false;

  void onCheckBoxTap(String type, bool value) {
    setState(() {
      if (type == 'Metric') {
        isMetricChecked = value;
        if (value) {
          isImperialChecked = false;
        }
      } else if (type == 'Imperial') {
        isImperialChecked = value;
        if (value) {
          isMetricChecked = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'UNITS OF MEASURE',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Parameters(
                text: 'Metric',
                isChecked: isMetricChecked,
                onChanged: (value) => onCheckBoxTap('Metric', value),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey.shade700.withOpacity(0.4),
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              Parameters(
                text: 'Imperial',
                isChecked: isImperialChecked,
                onChanged: (value) => onCheckBoxTap('Imperial', value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Parameters extends StatelessWidget {
  const Parameters({
    super.key,
    required this.text,
    required this.isChecked,
    required this.onChanged,
  });

  final String text;
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        GFCheckbox(
          type: GFCheckboxType.circle,
          activeBgColor: Colors.green,
          onChanged: onChanged,
          value: isChecked,
        ),
      ],
    );
  }
}
