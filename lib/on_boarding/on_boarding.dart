import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../color.dart';
import 'customslider.dart';
import 'onboarding_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImplement());
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .98,
            child: Column(children: [
              const Expanded(
                flex: 3,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                child: Container(

                  padding: const EdgeInsets.only(left: 311,right: 44,bottom: 56),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next',

                    ),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
