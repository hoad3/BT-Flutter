import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();
  double _result = 0;

  void _calculate(String operation) {
    double? a = double.tryParse(_controllerA.text);
    double? b = double.tryParse(_controllerB.text);
    if (a == null || b == null) return;

    setState(() {
      switch (operation) {
        case '+':
          _result = a + b;
          break;
        case '-':
          _result = a - b;
          break;
        case '×':
          _result = a * b;
          break;
        case '÷':
          _result = (b != 0) ? a / b : 0;
          break;
      }
    });
  }

  Widget _buildButton(String label, Color color) {
    return ElevatedButton(
      onPressed: () => _calculate(label),
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(label, style: const TextStyle(fontSize: 20, color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator"), backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn2.iconfinder.com/data/icons/ios7-inspired-mac-icon-set/512/Calculator_512.png",
              height: 100,
            ),
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              // Đảm bảo bàn phím chỉ nhập số
              decoration: const InputDecoration(
                labelText: "Nhập số A",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Nhập số B",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Text("Kết quả $_result",
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildButton("+", Colors.blue),
                _buildButton("-", Colors.red),
                _buildButton("×", Colors.green),
                _buildButton("÷", Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
