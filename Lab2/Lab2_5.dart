

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab2_5 extends StatelessWidget{
  const Lab2_5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("BottomAppBar Example"),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text("Đào Ngọc Hòa", style: TextStyle(fontSize: 40),),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Add a task"),
          icon: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
              const Spacer(),
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}