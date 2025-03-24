import 'package:flutter/material.dart';
import 'package:study_flutter/Lab5/Lab5_3_2.dart';
import 'package:study_flutter/Lab5/Lab5_3_3.dart';

class Lab5_3_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title of Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Lab5_3_2()),
                );
              },
              child: const Text('Go to Details Page'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Lab5_3_3()),
                );
              },
              child: const Text('Go to About Page'),
            ),
          ],
        ),
      ),
    );
  }
}