import 'package:calendar_slider/calendar_slider.dart';
import 'package:fitness_tracker_app/constants/color.dart';
import 'package:fitness_tracker_app/provider/workout_provider_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_tracker_app/provider/pedometer_provider.dart';

class WorkoutProgressPage extends StatefulWidget {
  const WorkoutProgressPage({super.key});

  @override
  State<WorkoutProgressPage> createState() => _WorkoutProgressPageState();
}

class _WorkoutProgressPageState extends State<WorkoutProgressPage> {
  final _firstController = CalendarSliderController();
  bool _isResetting = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final workoutData = Provider.of<WorkoutData>(context);
    final pedometerProvider = Provider.of<PedometerProvider>(context);
    final stepCount = pedometerProvider.stepCount;
    final caloriesBurned = pedometerProvider.caloriesBurned;

    final workoutTime = pedometerProvider.workoutTime;

    void _resetData() async {
      setState(() {
        _isResetting = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      pedometerProvider.reset();

      setState(() {
        _isResetting = false;
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CalendarSlider(
        controller: _firstController,
        selectedDayPosition: SelectedDayPosition.center,
        fullCalendarScroll: FullCalendarScroll.vertical,
        backgroundColor: Colors.grey[900],
        fullCalendarWeekDay: WeekDay.short,
        selectedTileBackgroundColor: PrimaryColor,
        monthYearButtonBackgroundColor: Colors.grey[700],
        monthYearTextColor: Colors.white,
        tileBackgroundColor: Colors.grey[700],
        selectedDateColor: Colors.black,
        dateColor: Colors.white,
        tileShadow: BoxShadow(
          color: Colors.black.withOpacity(1),
        ),
        locale: 'en',
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 100)),
        lastDate: DateTime.now().add(const Duration(days: 100)),
        onDateSelected: (date) {
          setState(() {
            // Handle date selection if needed
          });
        },
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              CircularIndicatorText(
                text: '${caloriesBurned.toStringAsFixed(1)} Cal',
                subText: 'Active Calories',
                color: PrimaryColor,
                strokeWidth: 10,
                size: size.width * 0.45,
                value: caloriesBurned / 100000, // Assuming max is 100000 Cal
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularIndicatorText(
                    text: '$stepCount',
                    subText: 'Steps',
                    color: Colors.red,
                    strokeWidth: 7,
                    size: size.width * 0.26,
                    value: stepCount / 100000, // Assuming max is 1,00,000 steps
                  ),
                  CircularIndicatorText(
                    text: '${workoutTime.toStringAsFixed(0)}min',
                    subText: 'Time',
                    color: Colors.blue,
                    strokeWidth: 7,
                    size: size.width * 0.26,
                    value:
                        workoutData.time / 300, // Assuming max is 300 minutes
                  ),
                  CircularIndicatorText(
                    text: '${workoutData.heartRate}bpm',
                    subText: 'Heart',
                    color: Colors.orange,
                    strokeWidth: 7,
                    size: size.width * 0.26,
                    value:
                        workoutData.heartRate / 200, // Assuming max is 200 bpm
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: PrimaryColor,
                ),
                onPressed: _isResetting ? null : _resetData,
                child: _isResetting
                    // ignore: prefer_const_constructors
                    ? CircularProgressIndicator(
                        // ignore: prefer_const_constructors
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Reset Data',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.refresh_outlined),
                        ],
                      ),
              ),
              SizedBox(height: size.height * 0.08),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Workout Progress',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text("View All",
                        style: TextStyle(fontSize: 15, color: PrimaryColor)),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const TextCheckboxContainer(
                text: 'Stability Training',
                subtext: '9:00am - 10:00am, Monday',
                value: false,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const TextCheckboxContainer(
                text: 'Strength training',
                subtext: '10:00am - 11:00am, Tuesday',
                value: false,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const TextCheckboxContainer(
                text: 'Balance Training',
                subtext: '10:00am - 11:00am, Wednesday',
                value: false,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const TextCheckboxContainer(
                text: 'Flexibilty Training, Thursday',
                subtext: '7:00pm - 7:45pm',
                value: false,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const TextCheckboxContainer(
                text: 'Circuit Training, Friday',
                subtext: '7:00pm - 7:45pm',
                value: false,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const TextCheckboxContainer(
                text: 'Cardio Training, Saturday',
                subtext: '7:00pm - 7:45pm',
                value: false,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const TextCheckboxContainer(
                text: 'Barbell Squat, Sunday',
                subtext: '7:00pm - 7:45pm',
                value: false,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextCheckboxContainer extends StatefulWidget {
  const TextCheckboxContainer({
    super.key,
    required this.text,
    required this.subtext,
    required this.value,
  });

  final String text;
  final String subtext;
  final bool value;

  @override
  // ignore: library_private_types_in_public_api
  _TextCheckboxContainerState createState() => _TextCheckboxContainerState();
}

class _TextCheckboxContainerState extends State<TextCheckboxContainer> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.value;
  }

  void _toggleCheckbox() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: _toggleCheckbox,
      child: Container(
        height: size.height * 0.085,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.subtext,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Center(
                child: Checkbox(
                  onChanged: (value) {
                    _toggleCheckbox();
                  },
                  value: _isChecked,
                  activeColor: PrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircularIndicatorText extends StatelessWidget {
  const CircularIndicatorText({
    super.key,
    required this.text,
    required this.subText,
    required this.color,
    required this.strokeWidth,
    this.size,
    required this.value,
  });
  final String text;
  final double? size;
  final String subText;
  final Color color;
  final double strokeWidth;
  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: size,
            width: size,
            child: CircularProgressIndicator(
              value: value,
              backgroundColor: Colors.grey[800],
              valueColor: AlwaysStoppedAnimation<Color>(color),
              strokeWidth: strokeWidth,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 26, color: Colors.white),
              ),
              Text(
                subText,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
