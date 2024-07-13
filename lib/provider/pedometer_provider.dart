// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';

class PedometerProvider with ChangeNotifier {
  int _stepCount = 0;
  double _caloriesBurned = 0;
  int _workoutTime = 0;
  StreamSubscription<StepCount>? _stepCountSubscription;
  Timer? _resetTimer;

  int get stepCount => _stepCount;
  double get caloriesBurned => _caloriesBurned;
  int get workoutTime => _workoutTime;

  PedometerProvider() {
    _initPedometer();
    _scheduleMidnightReset();
  }

  void _initPedometer() {
    try {
      _stepCountSubscription = Pedometer.stepCountStream
          .listen(_onStepCount, onError: _onStepCountError);
    } catch (e) {
      print("Error initializing pedometer: $e");
    }
  }

  void _onStepCount(StepCount event) {
    _stepCount = event.steps;
    _caloriesBurned = calculateCaloriesBurned(_stepCount);
    print("Steps: $_stepCount, Calories Burned: $_caloriesBurned");
    notifyListeners();
  }

  void _onStepCountError(error) {
    print("Error listening to step count stream: $error");
  }

  void updateWorkoutTime(int minutes) {
    _workoutTime = minutes;
    notifyListeners();
  }

  void reset() {
    _stepCount = 0;
    _caloriesBurned = 0;
    notifyListeners();
  }

  double calculateCaloriesBurned(int steps) {
    // Assuming 0.04 calories per step
    return steps * 0.04;
  }

  void _scheduleMidnightReset() {
    final now = DateTime.now();
    final nextMidnight = DateTime(now.year, now.month, now.day + 1);
    final timeUntilMidnight = nextMidnight.difference(now);

    _resetTimer?.cancel(); // Cancel any existing timer
    _resetTimer = Timer(timeUntilMidnight, () {
      reset(); // Reset step count and calories at midnight
      _scheduleMidnightReset(); // Schedule the next reset
    });
  }

  @override
  void dispose() {
    _resetTimer?.cancel();
    _stepCountSubscription?.cancel();
    super.dispose();
  }
}
