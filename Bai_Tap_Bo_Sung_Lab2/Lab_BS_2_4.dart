import 'package:flutter/material.dart';

class Lab_BS_2_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Đào Ngọc Hòa", style: TextStyle(fontSize: 40),),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Car", icon: Icon(Icons.directions_car)),
              Tab(text: "Transit", icon: Icon(Icons.directions_transit)),
              Tab(text: "Bike", icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Car", style: TextStyle(fontSize: 40),)),
            Center(child: Text("Transit", style: TextStyle(fontSize: 40),)),
            Center(child: Text("Bike", style: TextStyle(fontSize: 40),)),
          ],
        ),
      ),
    );
  }
}