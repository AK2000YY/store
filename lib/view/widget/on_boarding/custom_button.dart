import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/on_boarding_controller.dart';

import '../../../core/constant/color.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: MaterialButton(
        onPressed: (){
          controller.next();
        },
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        color: AppColor.primaryColor,
        child: const Text(
          "Continue",
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
