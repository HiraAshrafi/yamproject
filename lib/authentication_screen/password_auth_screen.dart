import 'package:flutter/material.dart';
import 'package:yamproject/authentication_screen/phone_auth_screen.dart';

import '../compnonet/color.dart';
import '../controller/bottom_nav.dart';
import '../widget/button_widget.dart';
import '../widget/head_text.dart';
import '../widget/icon.dart';
import '../widget/normal_text.dart';
import '../widget/text_filed.dart';

class PasswordAuthScreen extends StatefulWidget {
  const PasswordAuthScreen({Key? key}) : super(key: key);

  @override
  State<PasswordAuthScreen> createState() => _PasswordAuthScreenState();
}

class _PasswordAuthScreenState extends State<PasswordAuthScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        appBar: AppBar(
            backgroundColor: AppColors.appbarColor,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PhoneAuthScreen()));
              },
              icon: MyIconWidget(
                  icon: Icons.arrow_back,
                  iconColor: AppColors.backIconColor,
                  iconSize: 24),
            ),
            title: MyHeadTextWidget(
                textName: "Yam",
                textFontSize: 25,
                textColor: AppColors.appbarTextColor),
            centerTitle: true),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyNormalTextWidget(
                            textName: "Password",
                            textColor: AppColors.headTextColor,
                            textFontSize: 14),
                        const SizedBox(height: 5),
                        Form(
                            key: formKey,
                            child: MyTextFormFieldWidget(
                                controller: passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true)),
                        const SizedBox(height: 30),
                        MyButtonWidget(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const BottomNavController()));
                          },
                          buttonColor: AppColors.buttonBgColor,
                          buttonName: "Sign in",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: MyNormalTextWidget(
                        textName: "I forgot my password",
                        textColor: AppColors.appbarTextColor,
                        textFontSize: 12),
                  ),
                ]),
          ),
        ));
  }
}
