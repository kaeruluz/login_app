import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPage(
          model: OnBoardingModel(
        image: onBoardingImg1,
        title: onBoardingTitle1,
        subTitle: onBoardingSubTitle1,
        counterText: onBoardingCounter1,
        height: size.height,
        bgColor: onBoardingPage1Color,
      )),
      OnBoardingPage(
          model: OnBoardingModel(
        image: onBoardingImg2,
        title: onBoardingTitle2,
        subTitle: onBoardingSubTitle2,
        counterText: onBoardingCounter2,
        height: size.height,
        bgColor: onBoardingPage2Color,
      )),
      OnBoardingPage(
          model: OnBoardingModel(
        image: onBoardingImg3,
        title: onBoardingTitle3,
        subTitle: onBoardingSubTitle3,
        counterText: onBoardingCounter3,
        height: size.height,
        bgColor: onBoardingPage3Color,
      ))
    ];

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
          )
        ],
      ),
    );
  }
}
