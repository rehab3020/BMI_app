import 'dart:math';

import 'package:flutter/material.dart';

import 'app_barr.dart';
import 'result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = false;
  bool isFemale = false;
  double height = 120.0;
  double weight = 0.0;
  int age = 0;
  String checkGender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0F1E),
      appBar: appBarModel(elevate: 2),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                        isFemale = false;
                        height = 120.0;
                        weight = 0.0;
                        age = 0;
                        checkGender = '';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isMale
                            ? Colors.pinkAccent
                            : const Color(0xFF101323),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.only(
                          right: 10.0, left: 10.0, top: 10.0, bottom: 5.0),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 80.0,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: Color(0xff555664),
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFemale = true;
                        isMale = false;
                        height = 120.0;
                        weight = 0.0;
                        age = 0;
                        checkGender = '';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isFemale
                            ? Colors.pinkAccent
                            : const Color(0xFF101323),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.only(
                          right: 10.0, left: 10.0, top: 10.0, bottom: 5.0),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 80.0,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              color: Color(0xff555664),
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                checkGender,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                  right: 10.0, left: 10.0, bottom: 10.0, top: 8.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color(0xff1A1B2D),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(
                      color: Color(0xff656677),
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${height.round()}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                          color: Color(0xff656677),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    max: 200.0,
                    min: 80.0,
                    activeColor: Colors.pinkAccent,
                    inactiveColor: Colors.white70,
                    // secondaryActiveColor: Colors.grey,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff1A1B2D),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Color(0xff656677),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '${weight.round()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'weight-',
                              onPressed: () {
                                setState(() {
                                  weight--;
                                  if (weight < 0) weight = 0;
                                });
                              },
                              backgroundColor: const Color(0xff424555),
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              heroTag: 'weight+5',
                              onPressed: () {
                                setState(() {
                                  weight += 5;
                                });
                              },
                              backgroundColor: const Color(0xff424555),
                              mini: true,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff1A1B2D),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                            color: Color(0xff656677),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'age-',
                              onPressed: () {
                                setState(() {
                                  age--;
                                  if (age < 0) age = 0;
                                });
                              },
                              backgroundColor: const Color(0xff424555),
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              heroTag: 'age+5',
                              onPressed: () {
                                setState(() {
                                  age += 5;
                                });
                              },
                              backgroundColor: const Color(0xff424555),
                              mini: true,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  double result = weight / pow(height / 100, 2);
                  if (!isMale && !isFemale) {
                    checkGender = 'Gender is required';
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          age: age,
                          iSMale: isMale,
                          result: result.round(),
                        ),
                      ),
                    );
                  }
                });
              },
              color: Colors.pinkAccent,
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
