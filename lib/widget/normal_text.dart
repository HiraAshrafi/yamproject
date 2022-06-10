import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNormalTextWidget extends StatelessWidget {
  final String textName;
  final Color textColor;
  final double textFontSize;

  const MyNormalTextWidget(
      {Key? key,
        required this.textName,
        required this.textColor,
        required this.textFontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: GoogleFonts.poppins(
          color: textColor,
          fontSize: textFontSize,
          fontWeight: FontWeight.w500),
    );
  }
}
