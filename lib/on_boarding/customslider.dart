import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_boarding_and_auth/on_boarding/static.dart';

import 'onboarding_controller.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImplement> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Image.asset(
                  onBoardingList[i].image!,
                  // width: ,
                  // height: 230,
                  // fit: BoxFit.fill,
                ),

                // const SizedBox(height: 15),

                SizedBox(height: MediaQuery.of(context).size.height * .066),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Text(
                        onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )),
              ],
            ));
  }
}
