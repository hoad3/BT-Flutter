


import 'package:flutter/material.dart';

class Lab5_3_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title of About Page'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.lightBlue[100],
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