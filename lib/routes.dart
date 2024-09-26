import 'package:flutter/material.dart';
import 'package:untitled/view/screen/auth/login.dart';

import 'core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login()
};