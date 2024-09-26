import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/on_boarding_controller.dart';

import '../../../data/datasource/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.onPageChange(index);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 80),
              child: Text(
                  onBoardingList[i].title!,
                  style: Theme.of(context).textTheme.headlineSmall
              ),
            ),
            Image.asset(
              onBoardingList[i].image!,
              width: 200,
              height: 250,
              fit: BoxFit.fill,
            ),
            Container(
              padding: const EdgeInsets.only(top: 80),
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            )
          ],
        )
    );
  }
}
