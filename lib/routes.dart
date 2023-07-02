import 'package:on_boarding_and_auth/view/screens/intro_screen.dart';
import 'package:on_boarding_and_auth/view/screens/log_in_screen.dart';
import 'package:on_boarding_and_auth/view/screens/sign_up_screen.dart';

import 'app_routes.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  //auth
  AppRoutes.intro: (context) => const IntroScreen(),
  AppRoutes.login: (context) => const LogInScreen(),
  AppRoutes.signUp: (context) => const SignUpScreen(),
};
