import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Lab2_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Đặt màu nền cho Status Bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarIconBrightness: Brightness.light,
    ));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lab2-3'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.cloud_upload),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text(
            'Đào Ngọc Hòa',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
