import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:on_boarding_and_auth/app_routes.dart';
import 'package:on_boarding_and_auth/imageassets.dart';

import '../../color.dart';
import '../widgets/custom_botton.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Center(
        child: Column(
          children: [
             SizedBox(height: h*.39),
            Image.asset(AppImageAsset.sumerImage),
             SizedBox(height: h*.27),
             CustomButton(label: 'Login',onTap: (){
              Get.toNamed(AppRoutes.login);
            },),
             SizedBox(height: h*.01),
            customSignUp(),
          ],
        ),
      ),
    );
  }
}

Widget customSignUp() {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 43,
      width: 282,
      decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.primaryColor)),
      child: const Center(
        child: Text(
          'Sign up',
          style: TextStyle(
            fontSize: 16,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
