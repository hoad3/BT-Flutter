import 'package:flutter/material.dart';
import 'package:study_flutter/Lab2/Lab2_1.dart';
import 'package:study_flutter/Lab2/Lab2_2.dart';
import 'package:study_flutter/Lab2/Lab2_5.dart';
import 'package:study_flutter/header/Homepage.dart';

import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_1.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_2.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_3.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_4.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_5.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_6.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_7.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_8.dart';
import 'Bai_Tap_Bo_Sung_Lab2/Lab_BS_2_9.dart';
import 'Lab2/Lab2_3.dart';
import 'Lab2/Lab2_4.dart';
import 'header/CalculatorScreen.dart';
import 'header/Changebackgound.dart';
import 'header/PrimeCheckerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Lớp Công nghệ lập trình đa nền tảng.'),
      home:  ProgressScreens()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bạn có thể nhấn vào nút này nhiều lần:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
