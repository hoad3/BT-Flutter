import 'package:flutter/material.dart';

class PrimeCheckerScreen extends StatefulWidget {
  @override
  _PrimeCheckerScreenState createState() => _PrimeCheckerScreenState();
}

class _PrimeCheckerScreenState extends State<PrimeCheckerScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  bool _isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  void _checkPrime() {
    int? number = int.tryParse(_controller.text);
    if (number == null) return;

    setState(() {
      _result = _isPrime(number) ? "$number là số nguyên tố" : "$number không phải số nguyên tố";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kiểm tra số nguyên tố"), backgroundColor: Colors.blue),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Nhập số"),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: _checkPrime, child: Text("Kiểm tra")),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
