import 'package:flutter/material.dart';

class WorkoutData with ChangeNotifier {
  double _calories = 0;
  int _steps = 0;
  double _time = 0;
  int _heartRate = 0;

  double get calories => _calories;
  int get steps => _steps;
  double get time => _time;
  int get heartRate => _heartRate;

  void updateCalories(double newCalories) {
    _calories = newCalories;
    notifyListeners();
  }

  void updateSteps(int newSteps) {
    _steps = newSteps;
    notifyListeners();
  }

  void updateTime(double newTime) {
    _time = newTime;
    notifyListeners();
  }

  void updateHeartRate(int newHeartRate) {
    _heartRate = newHeartRate;
    notifyListeners();
  }
}
