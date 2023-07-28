import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/tabs/about_screen.dart';
import 'package:medcentral/pages/tabs/dashboard.dart';
import 'package:medcentral/pages/tabs/report_screen.dart';
import 'package:medcentral/pages/tabs/settings_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: [
          DashBoard(),
          ReportScreen(),
          SettingsPage(),
          AboutScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        enableFeedback: true,
        elevation: 0,
        type: BottomNavigationBarType.fixed,

        selectedIconTheme: IconThemeData(
          color: HexColor("#37C9EE"),
        ),
        unselectedItemColor: HexColor("#2E2D32"),
        iconSize: 30,

        unselectedLabelStyle : GoogleFonts.lato(fontSize: 11,fontWeight: FontWeight.w800,color: Colors.black),
        selectedLabelStyle : GoogleFonts.lato(fontSize: 11,fontWeight: FontWeight.w800,color: HexColor("#37C9EE",)),

        onTap: (index){
          setState(() {
            _selectedIndex = index;
            _onItemTapped(index);
          });

        },
        currentIndex: _selectedIndex,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: "Reports"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline),label: "About"),
      ],
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    });
  }
}

