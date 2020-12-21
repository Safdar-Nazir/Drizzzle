import 'package:drizzzle_app/screens/home_page.dart';
import 'package:drizzzle_app/services/location.dart';
import 'package:drizzzle_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  Location location = Location();

  final pageList = [
    SkOnboardingModel(
      title: 'You are the sky. Everything else – it’s just the weather.',
      description: 'Pema Chödrön',
      titleColor: Color(kPrimaryColor),
      descripColor: const Color(0xFF929794),
      imagePath: 'assets/images/onBoarding.png',
    ),
    SkOnboardingModel(
      title: 'Tut, Tut, looks like rain',
      description: 'A.A. Milne',
      titleColor: Color(kPrimaryColor),
      descripColor: const Color(0xFF929794),
      imagePath: 'assets/images/onBoarding1.png',
    ),
    SkOnboardingModel(
      title: 'Thunderstorms are as much our friends as the sunshine.',
      description: 'Criss Jami',
      titleColor: Color(kPrimaryColor),
      descripColor: const Color(0xFF929794),
      imagePath: 'assets/images/onBoarding2.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    location.getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SKOnboardingScreen(
          bgColor: Colors.white,
          themeColor: const Color(kSecondaryColor),
          pages: pageList,
          skipClicked: (value) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            );
          },
          getStartedClicked: (value) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
