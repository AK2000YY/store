import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final void Function()? onPressed;

  const CustomButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(text , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
      ),
    );
  }
}
