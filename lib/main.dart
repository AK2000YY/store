import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/view/screen/on_boarding.dart';

import 'core/constant/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20 ,
              color: AppColor.black
          ),
          bodySmall: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 17
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
