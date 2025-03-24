import 'package:flutter/material.dart';

class Lab5_2_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title of Page 2'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.lightGreen[100],
        child: const Center(
          child: Text('Page 2', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
