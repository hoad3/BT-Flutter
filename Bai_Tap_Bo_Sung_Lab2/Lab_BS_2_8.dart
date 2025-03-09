import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class Lab_BS_2_8 extends StatefulWidget {
  @override
  _Lab_BS_2_8State createState() => _Lab_BS_2_8State();
}

class _Lab_BS_2_8State extends State<Lab_BS_2_8> {
  double progress = 0.65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đào Ngọc Hòa - 10CNPM1"),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: progress,
              center: Text("Percent: ${(progress * 100).toInt()}%"),
              progressColor: Colors.blue,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text("Start")),
            ElevatedButton(onPressed: () {}, child: const Text("Stop")),
          ],
        ),
      ),
    );
  }
}