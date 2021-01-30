import 'package:drizzzle_app/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../services/location.dart';
import '../size_config.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Location location = Location();
  var weatherData;

  @override
  void initState() {
    super.initState();
    weatherData = location.getLocationData();

    print(weatherData);
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
                    'SadiqAbad',
                    style: kTitleText.copyWith(
                      fontSize: getScreenHeight(32),
                      letterSpacing: 1.2,
                    ),
                  ),
                  Text(
                    'Pakistan',
                    style: kBodyText.copyWith(
                      fontSize: getScreenHeight(17),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              // child: Container(color: Colors.red),
              child: Center(
                child: Text(
                  '23°C',
                  style: kHeadingText.copyWith(
                    fontSize: getScreenHeight(100),
                  ),
                ),
              ),
            ),
            Expanded(
              // child: Container(color: Colors.red),
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
                          '9km/h',
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
                          'Condition',
                          style: TextStyle(
                            fontSize: getScreenWidth(13),
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          'Raining',
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
                          '79%',
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
