

import 'package:flutter/material.dart';

class Lab4_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đào Ngọc Hòa'),
      backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.white), // Icon trước văn bản
            label: const Text('Cài Đặt', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Màu nền
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          )
        ),
      ),
    );
  }
}