import 'package:flutter/material.dart';

class ItineraryCard extends StatelessWidget {
  const ItineraryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: const [
            Text(
              "Avis - Economy Car",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Icon(Icons.directions_car, size: 80, color: Colors.blue),

            SizedBox(height: 20),

            Text("Pickup", style: TextStyle(fontWeight: FontWeight.bold)),

            Text("Nov 18, 2024 4:00 AM"),

            Text("O'Hare Intl Airport"),

            Text("Chicago, IL"),

            SizedBox(height: 20),

            Text("Unlimited mileage"),

            Text("Automatic transmission"),

            Text("Air conditioning"),
          ],
        ),
      ),
    );
  }
}
