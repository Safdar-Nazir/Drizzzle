import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  http.Response response;
  var weatherData;
  String city;

  NetworkHelper(this.url);

  final String url;

  dynamic getWeatherData() async {
    try {
      response = await http.get(url);
      if (response.statusCode == 200) {
        weatherData = jsonDecode(response.body);
        return weatherData;
      } else {
        return response.statusCode;
      }
    } catch (e) {
      print(e);
    }
  }
}
