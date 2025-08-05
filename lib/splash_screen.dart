// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';
import 'package:task/core/constant/strings.dart';
import 'package:task/ui/screens/vacancy_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VacancyScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Image.asset(
          "$staticAssets/app_logo.png",
          height: 77,
          width: 304,
        ),
      ),
    );
  }
}
