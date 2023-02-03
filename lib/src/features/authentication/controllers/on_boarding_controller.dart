import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
        model: OnBoardingModel(
      image: onBoardingImg1,
      title: onBoardingTitle1,
      subTitle: onBoardingSubTitle1,
      counterText: onBoardingCounter1,
      bgColor: onBoardingPage1Color,
    )),
    OnBoardingPage(
        model: OnBoardingModel(
      image: onBoardingImg2,
      title: onBoardingTitle2,
      subTitle: onBoardingSubTitle2,
      counterText: onBoardingCounter2,
      bgColor: onBoardingPage2Color,
    )),
    OnBoardingPage(
        model: OnBoardingModel(
      image: onBoardingImg3,
      title: onBoardingTitle3,
      subTitle: onBoardingSubTitle3,
      counterText: onBoardingCounter3,
      bgColor: onBoardingPage3Color,
    ))
  ];

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
