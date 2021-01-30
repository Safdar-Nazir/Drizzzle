// // In this file we are getting Location of the user.

// import 'package:drizzzle_app/services/networking.dart';
// import 'package:drizzzle_app/utilities/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import 'package:http/http.dart' as http;
// import 'package:geolocator/geolocator.dart';

// class Location {
//   double longitude, latitude;
//   http.Response response;
//   var weatherData;

// // Getting Device's Location.

//   Future<void> getLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.low);
//       longitude = position.longitude;
//       latitude = position.latitude;
//       String url =
//           'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';
//       NetworkHelper networkHelper = NetworkHelper(url);
//       weatherData = await networkHelper.getWeatherData();
//       // print(weatherData);
//     } catch (e) {
//       print(e);
//     }
//   }
// }
