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
          style: kTitleText.copyWith(
            fontSize: getScreenHeight(32.0),
          ),
        ),
        Text(
          text,
          style: kBodyText.copyWith(
            fontSize: getScreenHeight(15),
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getScreenHeight(265),
          width: getScreenWidth(400),
        ),
        Spacer(),
      ],
    );
  }
}
