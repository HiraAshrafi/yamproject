import 'package:flutter/material.dart';

import 'package:yamproject/authentication_screen/password_auth_screen.dart';

import '../compnonet/color.dart';
import '../widget/button_widget.dart';
import '../widget/head_text.dart';
import '../widget/normal_text.dart';
import '../widget/text_filed.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: MyHeadTextWidget(
              textName: "Yam",
              textFontSize: 25,
              textColor: AppColors.appbarTextColor),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyHeadTextWidget(
                      textName: "Welcome",
                      textColor: AppColors.headTextColor,
                      textFontSize: 16),
                  const SizedBox(height: 30),
                  MyNormalTextWidget(
                      textName:
                      "Yam is your daily companion app - a personal assistant in your pocket. Use your phone number to connect to your branch.",
                      textColor: AppColors.subTextColor,
                      textFontSize: 12),
                  const SizedBox(height: 20),
                  MyNormalTextWidget(
                      textName: "Your phone number:",
                      textColor: AppColors.headTextColor,
                      textFontSize: 12),
                  const SizedBox(height: 5),
                  Form(
                      key: formKey,
                      child: MyTextFormFieldWidget(
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                      )),
                  const SizedBox(height: 25),
                  MyButtonWidget(
                      buttonName: "Continue",
                      buttonColor: AppColors.buttonBgColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const PasswordAuthScreen()));
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
