


import 'package:flutter/material.dart';

class Lab4_8 extends StatelessWidget {
  void _showSnackBarMsgDeleted(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Message Deleted!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Undo Action Performed')),
          );
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đào Ngọc Hòa'),
      backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSnackBarMsgDeleted(context);
          },
          child: const Text('Show SnackBar'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSnackBarMsgDeleted(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}