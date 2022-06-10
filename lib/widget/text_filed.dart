import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../compnonet/color.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;

  const MyTextFormFieldWidget(
      {Key? key,
        required this.controller,
        required this.keyboardType,
        this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      cursorColor: AppColors.cursorColor,
      keyboardType: keyboardType,
      style: GoogleFonts.poppins(
          color: AppColors.headTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide:
          BorderSide(color: AppColors.textFieldBorderColor, width: 1.2),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: AppColors.textFieldBorderColor, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: AppColors.textFieldBorderColor, width: 1.2),
        ),
      ),
    );
  }
}
