

import 'package:flutter/material.dart';

class Lab4_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Hòa'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black12,
            child: IconButton(
              icon: const Icon(Icons.directions_bus),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                print("Nhấn vào nút này");
              },
            ),
          ),
        ),
      ),
    );
  }
}