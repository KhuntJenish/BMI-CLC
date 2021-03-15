import 'package:bmi_calculator/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D2136),
        scaffoldBackgroundColor: Color(0xFF1D2136),
      ),
      home: BMI(),
    ),
  );
}
