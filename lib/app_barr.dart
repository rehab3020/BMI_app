import 'package:flutter/material.dart';

PreferredSizeWidget appBarModel({
  double elevate = 0.0,
}) =>
    AppBar(
      elevation: elevate,
      backgroundColor: const Color(0xff0A0F1E),
      title: const Center(
        child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
