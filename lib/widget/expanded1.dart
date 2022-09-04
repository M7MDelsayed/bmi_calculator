import 'package:flutter/material.dart';

class Expanded1 extends StatefulWidget {
  const Expanded1({super.key});

  @override
  State<Expanded1> createState() => _Expanded1State();
}

class _Expanded1State extends State<Expanded1> {
  bool isFEMALE = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFEMALE = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isFEMALE ? Colors.blue : Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/female.png"),
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "FEMALE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFEMALE = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: !isFEMALE ? Colors.blue : Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/male.png"),
                        width: 90,
                        height: 90,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
