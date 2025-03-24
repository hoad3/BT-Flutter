

import 'package:flutter/material.dart';

class Lab4_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Hòa - RotatedBox Example'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
              },
          ),
        ),
        body: const Center(
          child: RotatedBox(
            quarterTurns: 1, // Xoay 90 độ theo chiều kim đồng hồ
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Lớp Công nghệ phần mềm 1',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
