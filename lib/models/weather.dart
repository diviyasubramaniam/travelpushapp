class Weather {
  final String location;
  final double temperature;
  final String condition;
  final String icon;

  Weather({
    required this.location,
    required this.temperature,
    required this.condition,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      location: json["location"]["name"],
      temperature: json["current"]["temp_f"].toDouble(),
      condition: json["current"]["condition"]["text"],
      icon: "https:${json["current"]["condition"]["icon"]}",
    );
  }
}
