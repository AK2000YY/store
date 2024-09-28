import 'dart:ui';

import 'package:get/get.dart';
import 'package:untitled/core/service/services.dart';

class LocaleController extends GetxController {
  
  Locale? language;
  
  MyServices myServices = Get.find();

  changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    myServices.sharedPreferences.setString("lang", codeLang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? savedLang = myServices.sharedPreferences.getString("lang");
    language = savedLang == null ?
      Locale(Get.deviceLocale!.languageCode) :
      Locale(savedLang);
    super.onInit();
  }
}