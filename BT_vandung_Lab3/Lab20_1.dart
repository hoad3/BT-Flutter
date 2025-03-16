import 'package:flutter/material.dart';

class Lab20_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đào Ngọc Hòa')),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(200, 200),
            ),
            onPressed: () {},
            child: const Text('Button'),
          ),
        ),
      ),
    );
  }
}