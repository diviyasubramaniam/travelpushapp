import 'package:flutter/material.dart';

class ReservationHeader extends StatelessWidget {
  const ReservationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff003b70),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "(ORD) Chicago O'Hare International",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 10),

          Text(
            "Nov 18, 2024 4:00 AM - Nov 19, 2024 7:30 AM",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),

          SizedBox(height: 15),

          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "\$121.06",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
