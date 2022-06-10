import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtonWidget extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final Color buttonTextColor;
  final double buttonHeight;
  VoidCallback onPressed;

  MyButtonWidget(
      {Key? key,
        required this.buttonName,
        required this.buttonColor,
        this.buttonHeight = 35,
        this.buttonTextColor = Colors.white,
        required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      height: buttonHeight,
      minWidth: double.infinity,
      onPressed: onPressed,
      child: Text(buttonName,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              color: buttonTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w500)),
    );
  }
}
