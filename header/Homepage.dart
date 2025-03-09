import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trang chủ"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Đào Ngọc Hòa, 10_ĐH_CNPM1",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 60, height: 50, color: Colors.blue),
              Container(width: 60, height: 50, color: Colors.green),
              Container(width: 60, height: 50, color: Colors.orange),
            ],
          ),
          const SizedBox(height: 30),
          Image.network(
            "https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png",
            width: 200,
          ),
          const SizedBox(height: 30),
          // Nút bấm
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: const Text(
              "Bấm vào đây!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      )
    );
  }
}
