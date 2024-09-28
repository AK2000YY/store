import 'package:flutter/material.dart';
import 'package:untitled/core/constant/app_image_asset.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/core/localization/locale_controller.dart';
import 'package:get/get.dart';
import 'package:untitled/view/widget/language/custom_button_lang.dart';


class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                height: screenHeight* 5/6,
                child: Image.asset(
                    AppImageAsset.chooseLanguage,
                    fit: BoxFit.cover,
                )
            ),
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                height: screenHeight* 5/6,
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: screenHeight * 2/6 ,
                child: Container(
                  margin: const EdgeInsetsDirectional.only(start: 10, bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( "2".tr, style: const TextStyle(fontSize: 40 , color: Colors.white , fontWeight: FontWeight.bold)),
                      Text("3".tr, style: const TextStyle(fontSize: 20 , color: Colors.white))
                    ],
                  ),
                )
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                height: screenHeight* 2/6,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Text("1".tr, style: const TextStyle(fontSize: 30),),
                      ),
                      CustomButtonLang(textButton: "4".tr, image: AppImageAsset.arabicLanguage, onPressed: (){
                        controller.changeLang("ar");
                        Get.toNamed(AppRoutes.onBoarding);
                      }),
                      CustomButtonLang(textButton: "5".tr, image: AppImageAsset.englishLanguage, onPressed: (){
                        controller.changeLang("en");
                        Get.toNamed(AppRoutes.onBoarding);
                      },)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
//
// controller.changeLang("ar");
// Get.toNamed(AppRoutes.onBoarding);