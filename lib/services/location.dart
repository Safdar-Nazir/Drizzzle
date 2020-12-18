// In this file we are getting Location of the user.

import 'dart:convert';
import 'package:drizzzle_app/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class Location {
  double longitute;
  double latitude;
  http.Response response;
  var weatherData;

// Getting Device's Location and Weather Data using API.

  Future<void> getLocationData() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitute = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
    try {
      response = await http.get(
          'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitute&appid=$apiKey');
      print(response.body);
      weatherData = jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }
}

// decoration: BoxDecoration(
//   gradient: LinearGradient(
//     colors: [Color(kPrimaryColor), Color(kSecondaryColor)],
//     begin: Alignment.topRight,
//     end: Alignment.bottomLeft,
//   ),
// ),
