import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:yamproject/authentication_screen/password_auth_screen.dart';
import 'package:yamproject/views/bottom_nav_screen/today.dart';
import 'package:yamproject/widget/floatincActionBuble.dart';

import '../../compnonet/color.dart';
import '../../widget/head_text.dart';


class ClientScreen extends StatefulWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        automaticallyImplyLeading: false,
        title: MyHeadTextWidget(
          textName: "Clients group",
          textColor: AppColors.headTextColor,
          textFontSize: 18,
        ),

      ),
      floatingActionButton: Floating(),


    );

  }
}
