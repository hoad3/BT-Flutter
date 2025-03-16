import 'package:flutter/material.dart';

class Lab19_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đào Ngọc Hòa')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
              child: ElevatedButton(onPressed: (){
              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber
                ),
                child: const Text('Btn 3', style: TextStyle(color: Colors.blue)),
              )
          ),
          const Expanded(
            flex: 3,
            child: Center(child: Icon(Icons.ac_unit, size: 50, color: Colors.red)),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(onPressed: (){
            },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber
              ),
              child: const Text('Btn 3', style: TextStyle(color: Colors.blue)),
            )
          ),
          const Expanded(
            flex: 2,
            child: Center(child: Icon(Icons.add_circle, size: 80, color: Colors.green)),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(onPressed: (){
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber
              ),
              child: const Text('Btn 3', style: TextStyle(color: Colors.blue)),
            )

          ),
        ],
      ),
    );
  }
}