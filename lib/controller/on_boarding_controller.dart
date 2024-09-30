import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/data/datasource/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(index);
}

class OnBoardingControllerImp extends OnBoardingController {

  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if(currentPage < onBoardingList.length) {
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }

  @override
  onPageChange(index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

}