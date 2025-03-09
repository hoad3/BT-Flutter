import 'package:flutter/material.dart';

class Lab_BS_2_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đào Ngọc Hòa - 10CNPM1"),
        backgroundColor: Colors.purple[200],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome In SplashScreen", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text("Loading 18 %", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}