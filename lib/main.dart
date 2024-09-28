import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/localization/locale_controller.dart';
import 'package:untitled/core/localization/translation.dart';
import 'package:untitled/core/service/services.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/view/screen/language.dart';

import 'core/constant/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20 ,
              color: AppColor.black
          ),
          headlineMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26 ,
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
      home: const Language(),
      routes: routes,
    );
  }
}
