import 'package:flutter/material.dart';

class Expanded2 extends StatefulWidget {
  const Expanded2({super.key});

  @override
  State<Expanded2> createState() => _Expanded2State();
}

class _Expanded2State extends State<Expanded2> {
  double height = 120;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Height",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "${height.round()}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    "CM",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Slider(
                value: height,
                max: 220,
                min: 80,
                onChanged: (value) {
                  setState(
                    () {
                      height = value;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
