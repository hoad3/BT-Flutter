import 'package:flutter/material.dart';

class Lab19_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đào Ngọc Hòa')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.all(8),
            child: const Center(child: Text('B1', style: TextStyle(color: Colors.white))),
          ),
          const Expanded(
            flex: 3,
            child: Center(child: Icon(Icons.ac_unit, size: 50, color: Colors.red)),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.all(8),
            child: const Center(child: Text('B2', style: TextStyle(color: Colors.white))),
          ),
          const Expanded(
            flex: 2,
            child: Center(child: Icon(Icons.add_circle, size: 80, color: Colors.green)),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.all(8),
            child: const Center(child: Text('Btn 3', style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}