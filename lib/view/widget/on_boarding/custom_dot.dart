import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/on_boarding_controller.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: controller.currentPage == index? 20 : 6,
              height: 6,
              margin: const EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
            )
          )
      ],
    )
    );
  }
}
