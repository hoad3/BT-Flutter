import 'package:flutter/material.dart';

class Lab_BS_2_1 extends StatefulWidget {
  @override
  _Lab_BS_2_1State createState() => _Lab_BS_2_1State();
}

class _Lab_BS_2_1State extends State<Lab_BS_2_1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Đào Ngọc Hòa", style: TextStyle(fontSize: 40),)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Mail"),
        ],
      ),
    );
  }
}