import 'package:flutter/material.dart';

import '../widgets/weather_banner.dart';
import '../widgets/reservation_header.dart';
import '../widgets/cancellation_banner.dart';
import '../widgets/confirmation_card.dart';
import '../widgets/driver_information_card.dart';
import '../widgets/itinerary_card.dart';
import '../widgets/support_card.dart';

class ReservationDetailsPage extends StatelessWidget {
  const ReservationDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Reservation Details"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 16),

            ReservationHeader(),

            SizedBox(height: 16),

            WeatherBanner(airportCode: 'ORD'),

            SizedBox(height: 16),

            CancellationBanner(),

            SizedBox(height: 16),

            ConfirmationCard(),

            SizedBox(height: 16),

            DriverInformationCard(),

            SizedBox(height: 16),

            ItineraryCard(),

            SizedBox(height: 16),

            SupportCard(),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
