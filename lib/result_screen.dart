import 'package:flutter/material.dart';

import 'app_barr.dart';

class ResultScreen extends StatelessWidget {
  final bool iSMale;
  final int result;
  final int age;
  const ResultScreen(
      {super.key,
      required this.iSMale,
      required this.age,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0F1E),
      appBar: appBarModel(elevate: 0.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Gender: ',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                iSMale ? 'Male' : 'Female',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Result: ',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$result ',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.5,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Healthiness: ',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                checkHealthiness(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Age: ',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$age',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String checkHealthiness() {
    if (result < 18.5) {
      return 'UnderWight';
    } else if (result >= 18.5 && result < 24.9) {
      return 'Normal';
    } else if (result >= 25 && result < 29.9) {
      return 'overWight';
    } else {
      return 'Obese';
    }
  }
}
