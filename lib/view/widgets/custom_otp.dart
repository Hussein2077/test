import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:on_boarding_and_auth/app_routes.dart';
import 'package:on_boarding_and_auth/color.dart';
import 'package:pinput/pinput.dart';
class CustomOTP extends StatelessWidget {
  const CustomOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinput(

defaultPinTheme: PinTheme(
  textStyle: const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    color: AppColor.primaryColor,
  ),
  width: 62,
  height: 61,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Color(0x1FFFBE9D)
  )
),
    );
  }
}
