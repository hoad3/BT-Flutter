import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab2_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab2_2'),
      ),
      drawer: SafeArea( // Đảm bảo Drawer không bị che bởi notch hoặc thanh trạng thái
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  'Đào Ngọc Hòa',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title:const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title:const Text('Slideshow'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            'Đào Ngọc Hòa',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
