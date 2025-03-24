

import 'package:flutter/material.dart';

class Lab4_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Hòa-CNPM1'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(color: Colors.green, width: 2),
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.music_note, color: Colors.white),
              ),
              title: Text("LẠC TRÔI | OFFICIAL MUSIC VIDEO | SƠN TÙNG M-TP"),
              subtitle: Text("Sơn Tùng-MTP Album"),
            ),
          ),
        ),
      ),
    );
  }
}
