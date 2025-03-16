import 'package:flutter/material.dart';

class Lab18_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Hòa-CNPM 1'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            children: [
              Icon(Icons.star, size: 50),
              Spacer(),
              Icon(Icons.star, size: 50),
              Spacer(flex: 2),
              Icon(Icons.star, size: 50),
              Spacer(flex: 3),
              Icon(Icons.star, size: 50),
            ],
          ),
        )
      ),
    );
  }
}