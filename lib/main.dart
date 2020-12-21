import 'package:flutter/material.dart';
import 'package:drizzzle_app/screens/onboarding/on_boarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff01579b),
        accentColor: Color(0xff002f6c),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
