import 'package:flutter/material.dart';

class Lab16_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Hòa'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.blueGrey.withOpacity(0.7),
              ),
              Transform.rotate(
                angle: 0.7,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              // Transform.rotate(
              //   angle: 30,
              //   child: Container(
              //     width: 200,
              //     height: 50,
              //     color: Colors.amber,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}