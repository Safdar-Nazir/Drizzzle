import 'package:drizzzle_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../services/location.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Location location = Location();

  @override
  void initState() {
    super.initState();
    location.getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SadiqAbad',
                    style: kTextTitleStyle,
                  ),
                  Text(
                    'Pakistan',
                    style: kSubtitleText,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text(
                '23',
                style: kLargeTextTitleStyle,
              ),
            ),
            Expanded(
              child: SvgPicture.asset(
                'assets/svgs/rainy-6.svg',
                semanticsLabel: 'Cloudy',
                width: 300,
                height: 200,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Wind'),
                      Text(
                        '9km/h',
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Humidity'),
                      Text(
                        '79%',
                      )
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Text('Lowest Temparature'),
                  //     Text(
                  //       '19',
                  //     )
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     Text('Higest Temparature'),
                  //     Text(
                  //       '25',
                  //     )
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
