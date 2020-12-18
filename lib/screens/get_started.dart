import 'package:drizzzle_app/screens/home_page.dart';
import 'package:drizzzle_app/services/location.dart';
import 'package:drizzzle_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  Location location = Location();

  @override
  void initState() {
    super.initState();
    location.getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(
                'assets/svgs/weather.svg',
                semanticsLabel: 'Drizzling',
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Find the sun\nin your City!',
                  style: kTextTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'It\'s a pleasure to keep track of the \nweather with the new app',
                  style: kSubtitleText,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Get Started',
                        style: kButtonText,
                      ),
                      // margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(kSecondaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
