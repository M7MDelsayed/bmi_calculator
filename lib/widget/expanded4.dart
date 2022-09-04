import 'package:flutter/material.dart';

class Expanded4 extends StatefulWidget {
  const Expanded4({super.key});

  @override
  State<Expanded4> createState() => _Expanded4State();
}

class _Expanded4State extends State<Expanded4> {
  int weight = 50;

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
              "Weight",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "${weight.round()}",
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
                      weight--;
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
                      weight++;
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
