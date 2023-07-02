import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:on_boarding_and_auth/on_boarding/static.dart';

abstract class OnBoardingController extends GetxController {
  next();

  onPageChanged(int i);
}

class OnBoardingControllerImplement extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 400), curve: Curves.easeIn);
    }
  }

  @override
  onPageChanged(int i) {
    currentPage = i;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
