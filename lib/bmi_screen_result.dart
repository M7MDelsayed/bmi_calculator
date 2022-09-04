import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final int age;
  final bool isFEMALE;

  const BMIResultScreen({
    super.key,
    required this.age,
    required this.isFEMALE,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GENDER : ${isFEMALE ? 'FEMALE' : 'MALE'}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'RESULT : $result',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'AGE : $age',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
