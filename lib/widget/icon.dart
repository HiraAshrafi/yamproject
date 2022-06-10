import 'package:flutter/material.dart';

class MyIconWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  const MyIconWidget(
      {Key? key,
        required this.icon,
        required this.iconColor,
        required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: iconColor, size: iconSize);
  }
}
