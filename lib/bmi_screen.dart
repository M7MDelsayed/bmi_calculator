import 'dart:math';

import 'package:bmi_calculator/bmi_screen_result.dart';
import 'package:bmi_calculator/widget/expanded1.dart';
import 'package:bmi_calculator/widget/expanded2.dart';
import 'package:bmi_calculator/widget/expanded3.dart';
import 'package:bmi_calculator/widget/expanded4.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isFEMALE = true;
  double height = 120;
  int age = 20;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Expanded1(),
          const Expanded2(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: const [
                  Expanded3(),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded4(),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.blue),
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(
                      result: result.round(),
                      age: age,
                      isFEMALE: isFEMALE,
                    ),
                  ),
                );
              },
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
