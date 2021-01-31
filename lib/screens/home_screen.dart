import 'package:drizzzle_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import '../utilities/size_config.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.locationWeather});
  final locationWeather;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  int temparature, visibility, humidity, wind;
  String city, country;

  void updateUI(dynamic weatherData) {
    double tempwind = weatherData['wind']['speed'];
    wind = tempwind.toInt();
    double temp = weatherData['main']['temp'];
    temparature = temp.toInt();
    city = weatherData['name'];
    country = weatherData['sys']['country'];
    visibility = weatherData['visibility'];
    humidity = weatherData['main']['humidity'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    city,
                    style: kTitleText.copyWith(
                      fontSize: getScreenHeight(32),
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(5),
                  ),
                  Text(
                    country,
                    style: kBodyText.copyWith(
                      fontSize: getScreenHeight(18),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  '$temparature°C',
                  style: kHeadingText.copyWith(
                    fontSize: getScreenHeight(100),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Wind',
                          style: TextStyle(
                            fontSize: getScreenWidth(13),
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          '$wind km/h',
                          style: TextStyle(
                            fontSize: getScreenWidth(20),
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Visibility',
                          style: TextStyle(
                            fontSize: getScreenWidth(13),
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          '$visibility m',
                          style: TextStyle(
                            fontSize: getScreenWidth(20),
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Humidity',
                          style: TextStyle(
                            fontSize: getScreenWidth(13),
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          '$humidity%',
                          style: TextStyle(
                            fontSize: getScreenWidth(20),
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
