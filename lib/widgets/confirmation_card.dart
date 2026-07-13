import 'package:flutter/material.dart';

class ConfirmationCard extends StatelessWidget {
  const ConfirmationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          ListTile(
            tileColor: Color(0xff2b6ea5),
            title: Text(
              "Costco Travel Confirmation Number",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Text(
              "C1031776",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            title: Text("Avis Confirmation Number"),
            trailing: Text("34452302US3"),
          ),
        ],
      ),
    );
  }
}
