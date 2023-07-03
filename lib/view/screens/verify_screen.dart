import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:on_boarding_and_auth/app_routes.dart';
import 'package:on_boarding_and_auth/color.dart';
import 'package:on_boarding_and_auth/view/widgets/custom_botton.dart';
import 'package:on_boarding_and_auth/view/widgets/custom_otp.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Verification',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * .0497,
                ),
                const Text(
                  'We send you a code to verify your\n E-mail .',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: h * .0319,
                ),
                const Text(
                  'Enter code here',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: h * .0319,
                ),
                Padding(
                  padding: EdgeInsets.only(right: w * .1487),
                  child: const CustomOTP(),
                ),
                SizedBox(
                  height: h * .0947,
                ),
                Column(
                  children: [
                     CustomButton(label: 'Continue',

                    onTap: (){
                      Get.toNamed(AppRoutes.verifySuccessCode);
                    },),
                    SizedBox(
                      height: h * .0165,
                    ),
                    const Text(
                      'I don’t receive a code',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'RESEND',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
