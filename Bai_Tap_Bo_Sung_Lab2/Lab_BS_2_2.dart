import 'package:flutter/material.dart';

class Lab_BS_2_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Đào Ngọc Hòa"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Car", style: TextStyle(fontSize: 40),)),
            Center(child: Text("Transit", style: TextStyle(fontSize: 40))),
            Center(child: Text("Bike", style: TextStyle(fontSize: 40))),
          ],
        ),
      ),
    );
  }
}