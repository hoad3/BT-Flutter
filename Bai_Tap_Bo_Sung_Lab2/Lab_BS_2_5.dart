import 'package:flutter/material.dart';

class Lab_BS_2_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đào Ngọc Hòa - 10CNPM1"),
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: Image.network(
          'https://i.pinimg.com/236x/68/b5/78/68b578ad677d3aaad5991a03485aaec1.jpg',
          width: 250,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}