import 'package:flutter/material.dart';

class Expanded3 extends StatefulWidget {
  const Expanded3({super.key});

  @override
  State<Expanded3> createState() => _Expanded3State();
}

class _Expanded3State extends State<Expanded3> {
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Age",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "${age.round()}",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      age--;
                    });
                  },
                  mini: true,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                  mini: true,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
