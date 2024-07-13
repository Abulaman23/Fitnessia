// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fitness_tracker_app/provider/user_provider.dart';
import 'package:http/http.dart' as http;
import '../config.dart';

class AuthProvider extends ChangeNotifier {
  final UserProvider userProvider;
  AuthProvider(this.userProvider);
  static Future<String?> loginUser(String email, String password) async {
    try {
      var reqBody = {"email": email, "password": password};

      var response = await http.post(
        Uri.parse(loginURL),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqBody),
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        if (jsonResponse['message'] == 'User logged in successfully') {
          print('Login successful');
          return jsonResponse['token'];
        } else {
          print('Authentication failed: ${jsonResponse['message']}');
          return null;
        }
      } else {
        print('Server error: ${response.statusCode}');
        print('Server error: ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error logging in: $e');
      return null;
    }
  }

  static Future<String?> signUpUser(
      String name,
      String email,
      String password,
      int age,
      String gender,
      double weight,
      double height,
      String goal,
      String activity) async {
    try {
      var reqBody = {
        "name": name,
        "email": email,
        "password": password,
        "age": age,
        "gender": gender,
        "weight": weight,
        "height": height,
        "goal": goal,
        "activity": activity
      };

      var response = await http.post(
        Uri.parse(registerURL),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqBody),
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        if (jsonResponse['message'] == 'User registered successfully') {
          print('Sign up successful');
          return jsonResponse['token'];
        } else {
          print('Registration failed: ${jsonResponse['message']}');
          return null;
        }
      } else {
        print('Server error: ${response.statusCode}');
        print('Server error: ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error signing up: $e');
      return null;
    }
  }
}
