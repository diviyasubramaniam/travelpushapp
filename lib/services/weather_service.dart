import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';

class WeatherService {
  static const apiKey = "YOUR_API_KEY";

  Future<Weather> getWeather(String airport) async {
    final url = Uri.parse(
      "https://api.weatherapi.com/v1/current.json?key=$apiKey&q=$airport",
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    }

    throw Exception("Unable to load weather");
  }
}
