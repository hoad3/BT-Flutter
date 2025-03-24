import 'package:flutter/material.dart';
import 'package:study_flutter/Lab4/Lab4_1.dart';
import 'package:study_flutter/Lab4/Lab4_10.dart';
import 'package:study_flutter/Lab4/Lab4_2.dart';
import 'package:study_flutter/Lab4/Lab4_3.dart';
import 'package:study_flutter/Lab4/Lab4_4.dart';
import 'package:study_flutter/Lab4/Lab4_5.dart';
import 'package:study_flutter/Lab4/Lab4_6.dart';
import 'package:study_flutter/Lab4/Lab4_7.dart';
import 'package:study_flutter/Lab4/Lab4_8.dart';
import 'package:study_flutter/Lab4/Lab4_9.dart';

class Menu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Lab_4'),
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
                title:const Text('Lab4_1'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_1()));
                },
              ),
              ListTile(
                title:const Text('Lab4_2'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_2()));
                },
              ),
              ListTile(
                title:const Text('Lab4_3'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_3()));
                },
              ),
              ListTile(
                title:const Text('Lab4_4'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_4()));
                },
              ),
              ListTile(
                title:const Text('Lab4_5'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_5()));
                },
              ),
              ListTile(
                title:const Text('Lab4_6'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_6()));
                },
              ),
              ListTile(
                title:const Text('Lab4_7'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_7()));
                },
              ),
              ListTile(
                title:const Text('Lab4_8'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_8()));
                },
              ),
              ListTile(
                title:const Text('Lab4_9'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_9()));
                },
              ),
              ListTile(
                title:const Text('Lab4_10'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lab4_10()));
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
