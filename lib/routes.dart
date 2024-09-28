import 'package:flutter/material.dart';
import 'package:untitled/view/screen/auth/login.dart';
import 'package:untitled/view/screen/on_boarding.dart';

import 'core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onBoarding: (context) => const OnBoarding()
};