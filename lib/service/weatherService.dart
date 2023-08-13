import 'dart:convert';

import 'package:wether_application/model/weatherModel.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<WeatherModel>? getCuttertWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=a6f6883f784bed2e753f446fd1c68da5&units=metric");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(WeatherModel.fromJson(body));
    return WeatherModel.fromJson(body);
  }
}
