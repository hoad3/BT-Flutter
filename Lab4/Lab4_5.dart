


import 'package:flutter/material.dart';

class Lab4_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Hòa'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(
                  Icons.shopping_cart, "Dark", Colors.green, Colors.white),
              const SizedBox(width: 10),
              buildButton(
                  Icons.shopping_cart, "Light", Colors.green, Colors.black),
              const SizedBox(width: 20),
              buildButton(
                  Icons.attach_money, "Dark", Colors.blue, Colors.white),
              const SizedBox(width: 10),
              buildButton(
                  Icons.attach_money, "Light", Colors.blue, Colors.black),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildButton(IconData icon, String text, Color bgColor,
      Color textColor) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Icon(icon, color: textColor),
          const SizedBox(width: 5),
          Text(text, style: TextStyle(color: textColor)),
        ],
      ),
    );
  }
}