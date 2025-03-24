

import 'package:lucide_icons/lucide_icons.dart';
import 'package:flutter/material.dart';

class Lab4_9 extends StatelessWidget {
  const Lab4_9({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exercise9Screen(),
    );
  }
}

class Exercise9Screen extends StatelessWidget {
  const Exercise9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Đào Ngọc Hòa-CNPM1'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _customButton(
              icon: Icons.shopping_cart,
              label: 'Add To Cart',
              color: Colors.grey,
            ),
            const SizedBox(width: 10),
            _customButton(
              icon: LucideIcons.dollarSign,
              label: 'Buy Now',
              color: Colors.blue,
            ),
            const SizedBox(width: 10),
            _customButton(
              label: 'Reset',
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _customButton({IconData? icon, required String label, required Color color}) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: icon != null ? Icon(icon, color: Colors.white) : const SizedBox.shrink(),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}