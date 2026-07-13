import 'package:flutter/material.dart';

class CancellationBanner extends StatelessWidget {
  const CancellationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.red.shade50,
      child: ListTile(
        leading: const Icon(Icons.cancel, color: Colors.red),
        title: const Text(
          "This booking was cancelled on February 28, 2025",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
