import 'package:flutter/material.dart';

class DriverInformationCard extends StatelessWidget {
  const DriverInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Driver Information",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Text("Driver Name", style: TextStyle(fontWeight: FontWeight.bold)),

            Text("Diviya Subramaniam"),

            SizedBox(height: 20),

            Text("Driver must present their Costco membership card at pickup."),
          ],
        ),
      ),
    );
  }
}
