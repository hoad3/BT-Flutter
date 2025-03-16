import 'package:flutter/material.dart';

class Lab17_1 extends StatefulWidget {
  @override
  _Lab17_1State createState() => _Lab17_1State();
}

class _Lab17_1State extends State<Lab17_1> {
  int _index = 0;

  final List<Widget> _pages = [
    Container(width: 200, height: 150, color: Colors.green),
    Container(width: 200, height: 150, color: Colors.blue),
    Container(width: 200, height: 150, color: Colors.red),
  ];

  void _nextPage() {
    setState(() {
      _index = (_index + 1) % _pages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Đào Ngọc Hòa-CNPM 1')),
        body: Center(child: IndexedStack(index: _index, children: _pages)),
        floatingActionButton: FloatingActionButton(
          onPressed: _nextPage,
          child: const Text("Next"),
        ),
      ),
    );
  }
}