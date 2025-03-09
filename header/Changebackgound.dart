import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Changebackgound extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<Changebackgound> {
  Color _backgroundColor = Colors.purple;
  String _buttonText = "Nhấn vào nút để đổi màu Background";

  void _changeBackgroundColor() {
    final random = Random();
    setState(() {
      _backgroundColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      _buttonText =
          "Đã đổi màu background thành ${_colorToString(_backgroundColor)}";
    });
  }

  String _colorToString(Color color) {
    return "RGB(${color.red}, ${color.green}, ${color.blue})";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Homework"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: _changeBackgroundColor,
            child: Text(_buttonText, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
