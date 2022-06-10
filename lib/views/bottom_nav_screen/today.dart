import 'package:flutter/material.dart';


import '../../compnonet/color.dart';
import '../../widget/head_text.dart';
import '../../widget/icon.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        automaticallyImplyLeading: false,
        title: MyHeadTextWidget(
          textName: "Hello, Brenda",
          textColor: AppColors.headTextColor,
          textFontSize: 18,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: MyIconWidget(
                    icon: Icons.more_vert,
                    iconColor: AppColors.backIconColor,
                    iconSize: 24)),
          )
        ],
      ),
    );
  }
}
