import 'package:flutter/material.dart';

class Lab_BS_2_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BottomAppBar Example")),
      body: const Center(child: Text("Đào Ngọc Hòa", style: TextStyle(fontSize: 40),)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.greenAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}