import 'package:flutter/material.dart';

class Lab_BS_2_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đào Ngọc Hòa - 10CNPM1"),
        backgroundColor: Colors.blue[300],
      ),
      body: const Center(child: Text("Contacts", style: TextStyle(fontSize: 20))),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
    );
  }
}