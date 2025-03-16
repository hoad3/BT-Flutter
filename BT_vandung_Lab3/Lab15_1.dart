import 'package:flutter/material.dart';

class Lab15_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Hòa-CNPM 1'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
              const Expanded(
                flex: 2,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
              const Spacer(flex: 1),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Very Long Button 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}