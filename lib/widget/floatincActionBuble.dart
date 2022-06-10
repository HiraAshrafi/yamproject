import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../authentication_screen/password_auth_screen.dart';
import '../compnonet/color.dart';
import '../views/bottom_nav_screen/today.dart';

class Floating extends StatefulWidget {
  const Floating({Key? key}) : super(key: key);

  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        backgroundColor: AppColors.floatingcolor,
        icon: Icons.add,

        children: [
          SpeedDialChild(
              child: Icon(Icons.person),
              backgroundColor: Colors.white,
              onTap: (){
                TodayScreen();

              },
              label: "New client"


          ),
          SpeedDialChild(
              child: Icon(Icons.person),
              backgroundColor: Colors.white,
              label: "New group",
              onTap: ()=>Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>PasswordAuthScreen()
              ))
          ),
        ],

      ),

    );
  }
}
