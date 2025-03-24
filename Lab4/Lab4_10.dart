import 'package:flutter/material.dart';

class Lab4_10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đào Ngọc Hòa"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Quay lại trang trước
          },
        ),
      ),
      body: LanguageSelectionScreen(),
    );
  }
}

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _selectedLanguage = "?";

  void _showLanguageDialog() async {
    String? selected = await showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Row(
            children: [
              Icon(Icons.code, color: Colors.blue),
              SizedBox(width: 8),
              Text("Select a Language:"),
            ],
          ),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "Javascript"),
              child: const Text("Javascript"),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "HTML/CSS"),
              child: const Text("HTML/CSS"),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "SQL"),
              child: const Text("SQL"),
            ),
          ],
        );
      },
    );

    if (selected != null) {
      setState(() {
        _selectedLanguage = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _showLanguageDialog,
            child: const Text("Select a Language"),
          ),
          const SizedBox(height: 20),
          Text(
            "Selected Language: $_selectedLanguage",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
