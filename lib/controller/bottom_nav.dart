import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../compnonet/color.dart';
import '../views/bottom_nav_screen/clinets.dart';
import '../views/bottom_nav_screen/today.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final screens = [const TodayScreen(), const ClientScreen()];
  int _currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: AppColors.bottomNavColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          currentIndex: _currentScreenIndex,
          selectedLabelStyle: GoogleFonts.nunito(
              color: Colors.black, fontWeight: FontWeight.bold),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, size: 25.0), label: "Today"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 25.0), label: "Clients"),
          ],
          onTap: (index) {
            setState(() {
              _currentScreenIndex = index;
            });
          },
        ),
        body: screens[_currentScreenIndex]);
  }
}
