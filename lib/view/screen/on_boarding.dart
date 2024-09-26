
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/on_boarding_controller.dart';
import 'package:untitled/view/widget/on_boarding/custom_button.dart';
import 'package:untitled/view/widget/on_boarding/custom_dot.dart';
import 'package:untitled/view/widget/on_boarding/custom_slider.dart';



class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: CustomSlider()
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CustomDot(),
                      CustomButton()
                    ],
                  )
              )
            ]
          ),
      )
    );
  }
}
