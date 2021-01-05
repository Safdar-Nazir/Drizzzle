import 'package:drizzzle_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../services/location.dart';
import '../size_config.dart';

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
              child: Container(color: Colors.green),
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       'SadiqAbad',
              //       style: kTitleText.copyWith(
              //         fontSize: getScreenHeight(32),
              //         letterSpacing: 1.2,
              //       ),
              //     ),
              //     Text(
              //       'Pakistan',
              //       style: kBodyText.copyWith(
              //         fontSize: getScreenHeight(17),
              //       ),
              //     ),
              //   ],
              // ),
            ),
            Expanded(
              child: Container(color: Colors.red),
              // child: Text(
              //   '23°C',
              //   style: kHeadingText.copyWith(
              //     fontSize: getScreenHeight(100),
              //   ),
              // ),
            ),
            Expanded(
              child: Container(color: Colors.orange),
              // child: SvgPicture.asset(
              //   'assets/svgs/rainy-6.svg',
              //   semanticsLabel: 'Cloudy',
              //   width: getScreenWidth(400),
              //   height: getScreenHeight(300),
              //   fit: BoxFit.cover,
              // ),
            ),
            Expanded(
              child: Container(color: Colors.red),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     SizedBox(height: double.infinity),
              //     Column(
              //       children: [
              //         Text('Wind'),
              //         Text(
              //           '9km/h',
              //         )
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Text('Humidity'),
              //         Text(
              //           '79%',
              //         )
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Text('Lowest Temparature'),
              //         Text(
              //           '19',
              //         )
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Text('Higest Temparature'),
              //         Text(
              //           '25',
              //         )
              //       ],
              //     ),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}
