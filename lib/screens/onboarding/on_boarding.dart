import 'package:drizzzle_app/screens/onboarding/body.dart';
import 'package:drizzzle_app/size_config.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
