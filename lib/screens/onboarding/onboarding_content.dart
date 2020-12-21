import 'package:flutter/material.dart';
import 'package:drizzzle_app/utilities/constants.dart';
import 'package:drizzzle_app/size_config.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Drizzzle',
          style: kTitleText,
        ),
        Text(
          text,
          style: kBodyText,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getScreenHeight(265),
          width: getScreenWidth(400),
        ),
      ],
    );
  }
}
