import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/view/widget/auth/custom_body_text.dart';
import 'package:untitled/view/widget/auth/custom_button.dart';
import 'package:untitled/view/widget/auth/custom_text_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60, bottom: 20),
              child: Text(
                "Welcome",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            const CustomBodyText(text: "Sign In With Your Email And Password OR Continue With Social Media"),
            const CustomTextForm(label: "email", iconData: Icons.email,),
            const CustomTextForm(label: "password", iconData: Icons.lock,),
            Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                "Forget Password",
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(color: AppColor.grey),
              ),
            ),
            CustomButton(text: "Login", onPressed: (){},),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? "),
                  InkWell(
                    child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
