import 'package:flutter/material.dart';
import 'screens/reservation_details_page.dart';

void main() {
  runApp(const CostcoTravelApp());
}

class CostcoTravelApp extends StatelessWidget {
  const CostcoTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Costco Travel',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const ReservationDetailsPage(),
    );
  }
}
