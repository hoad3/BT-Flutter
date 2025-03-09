import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class ProgressScreens extends StatefulWidget {
  const ProgressScreens({super.key});

  @override
  _ProgressScreensState createState() => _ProgressScreensState();
}

class _ProgressScreensState extends State<ProgressScreens> {
  double percent9 = 0.65;
  double percent10 = 0.3;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bài tập nút loading-Đào Ngọc Hòa"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Bài 9"),
              Tab(text: "Bài 10"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildCircularProgress(),
            _buildLinearProgress(),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularProgress() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 10.0,
            percent: percent9,
            center: Text("${(percent9 * 100).toInt()}%"),
            progressColor: Colors.blue,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                percent9 = percent9 >= 1.0 ? 0.0 : percent9 + 0.1;
              });
            },
            child: const Text("Start"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                percent9 = 0.0;
              });
            },
            child: const Text("Stop"),
          ),
        ],
      ),
    );
  }

  Widget _buildLinearProgress() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // Đảm bảo các phần tử nằm giữa
        children: [
          Container(
            width: 250, // Đặt chiều rộng để căn giữa
            child: LinearPercentIndicator(
              width: 200.0,
              lineHeight: 10.0,
              percent: percent10,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          Text("Percent: ${(percent10 * 100).toInt()}%"),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                percent10 = percent10 >= 1.0 ? 0.0 : percent10 + 0.1;
              });
            },
            child: const Text("Start"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                percent10 = 0.0;
              });
            },
            child: const Text("Stop"),
          ),
        ],
      ),
    );
  }
}
