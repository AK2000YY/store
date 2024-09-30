import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';

class CustomTextForm extends StatelessWidget {

  final String label;
  final IconData iconData;
  final TextEditingController? myController;


  const CustomTextForm({super.key, required this.label, required this.iconData, this.myController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                color: AppColor.primaryColor,
                width: 3
              ),
            ),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(label, style: const TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w500),)
            ),
            hintText: "Enter your $label",
            hintStyle: const TextStyle(color: AppColor.grey),
            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30)
        ),
      ),
    );
  }
}
