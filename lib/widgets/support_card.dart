import 'package:flutter/material.dart';

class SupportCard extends StatelessWidget {
  const SupportCard({super.key});

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
              "Need Help?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text("1-866-921-7925", style: TextStyle(fontSize: 18)),

            SizedBox(height: 8),

            Text("Mon-Fri 5:00 AM - 7:00 PM PT"),

            Text("Sat-Sun 6:00 AM - 5:00 PM PT"),
          ],
        ),
      ),
    );
  }
}
