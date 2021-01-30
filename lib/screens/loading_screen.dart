import 'package:drizzzle_app/screens/home_screen.dart';
import 'package:drizzzle_app/services/networking.dart';
import 'package:drizzzle_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  double longitude, latitude;
  http.Response response;
  var weatherData;

// Getting Device's Location.

  Future getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
      String url =
          'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric';
      NetworkHelper networkHelper = NetworkHelper(url);
      weatherData = await networkHelper.getWeatherData();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen(
              locationWeather: weatherData,
            );
          },
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: kPrimaryColor,
          size: 60,
        ),
      ),
    );
  }
}
