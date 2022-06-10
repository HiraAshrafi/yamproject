import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHeadTextWidget extends StatelessWidget {
  final String textName;
  final Color textColor;
  final double textFontSize;

  const MyHeadTextWidget(
      {Key? key,
        required this.textName,
        required this.textColor,
        required this.textFontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: GoogleFonts.alice(
          color: textColor,
          fontSize: textFontSize,
          fontWeight: FontWeight.w500),
    );
  }
}
