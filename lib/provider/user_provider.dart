// ignore_for_file: prefer_final_fields, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  //ChangeNotifier is a class that provides change notifications to its listeners.
  String _gender = '';
  int _age = 0;
  String _height = '';
  String _weight = '';
  String _activityLevel = '';
  String _goal = '';

  String get gender => _gender;
  int get age => _age;
  String get height => _height;
  String get weight => _weight;
  String get activityLevel => _activityLevel;
  String get goal => _goal;

  void setGender(String _gender) {
    _gender = gender;
  }

  void setAge(int _age) {
    _age = age;
  }

  void setHeight(String _height) {
    _height = height;
  }

  void setWeight(String _weight) {
    _weight = weight;
  }

  void setActivityLevel(String _activityLevel) {
    _activityLevel = activityLevel;
  }

  void setGoal(String _goal) {
    _goal = goal;
  }
}
