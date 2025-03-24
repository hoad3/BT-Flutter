
import 'package:flutter/material.dart';

class Lab5_3_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title of Details Page'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.lightGreen[100],
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ),
      ),
    );
  }
}