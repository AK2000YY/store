import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';

class CustomBodyText extends StatelessWidget {

  final String text;

  const CustomBodyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColor.grey),
      ),
    );;
  }
}
