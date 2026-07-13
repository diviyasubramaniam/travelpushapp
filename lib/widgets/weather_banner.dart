import 'package:flutter/material.dart';
import '../models/weather.dart';
import '../services/weather_service.dart';

class WeatherBanner extends StatefulWidget {
  final String airportCode;

  const WeatherBanner({super.key, required this.airportCode});

  @override
  State<WeatherBanner> createState() => _WeatherBannerState();
}

class _WeatherBannerState extends State<WeatherBanner> {
  late Future<Weather> future;

  @override
  void initState() {
    super.initState();
    future = WeatherService().getWeather(widget.airportCode);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Weather>(
      future: future,

      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const LinearProgressIndicator();
        }

        final weather = snapshot.data!;

        return Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: Colors.lightBlue.shade700,
            borderRadius: BorderRadius.circular(12),
          ),

          child: Row(
            children: [
              Image.network(weather.icon, width: 55),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weather.location,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      weather.condition,
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              Text(
                "${weather.temperature.round()}°F",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
