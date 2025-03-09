import 'package:flutter/material.dart';

class Lab2_4 extends StatelessWidget{
  const Lab2_4({super.key});
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
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(icon: const Icon(Icons.home), onPressed: () {}),
              IconButton(icon: const Icon(Icons.share), onPressed: () {}),
              IconButton(icon: const Icon(Icons.mail), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}


