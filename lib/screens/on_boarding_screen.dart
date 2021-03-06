import 'package:drizzzle_app/screens/loading_screen.dart';
import 'package:drizzzle_app/utilities/size_config.dart';
import 'package:drizzzle_app/utilities/constants.dart';
import 'package:drizzzle_app/widgets/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;

  List<Map<String, String>> onBoardingContent = [
    {
      'text': 'Let\'s check weather condition in your area.',
      'image': 'assets/images/onBoarding.png'
    },
    {
      'text': 'I think rain has stopped. Let\' check.',
      'image': 'assets/images/onBoarding1.png'
    },
    {
      'text': 'Was it snow falling? I thought it\'s just rain.',
      'image': 'assets/images/onBoarding2.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardingContent.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  text: onBoardingContent[index]['text'],
                  image: onBoardingContent[index]['image'],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        onBoardingContent.length, (index) => buildDot(index)),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: getScreenWidth(40)),
                    child: SizedBox(
                      width: double.infinity,
                      height: getScreenHeight(60),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoadingScreen();
                          }));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: kSecondaryColor,
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kPrimaryColor,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kSecondaryColor : Colors.black38,
        borderRadius: BorderRadius.circular(23),
      ),
    );
  }
}
