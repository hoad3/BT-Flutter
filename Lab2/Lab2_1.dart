
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab2_1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Lab Flutter 2_1'),
      ),
      body: const Center(
          child: Text('Đào Ngọc Hòa', style: TextStyle(fontSize: 20))
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.black12,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}