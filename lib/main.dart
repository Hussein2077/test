import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_boarding_and_auth/app_routes.dart';
import 'package:on_boarding_and_auth/color.dart';
import 'package:on_boarding_and_auth/on_boarding/on_boarding.dart';
import 'package:on_boarding_and_auth/routes.dart';
import 'package:on_boarding_and_auth/view/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      routes: routes,
      initialRoute: AppRoutes.intro,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
scaffoldBackgroundColor: AppColor.backgroundColor,
        useMaterial3: true,
      ),
      home: const IntroScreen(),
    );
  }
}