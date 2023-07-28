import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/test_pages/clinical_ecg_test_page.dart';
import 'package:medcentral/utilities/dashboard_card.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

import '../test_pages/live_ecg_test_page.dart';
import '../test_pages/treadmill_test_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  DateTime now = DateTime.now();
  String greeting = "";
  int hours = DateTime.now().hour;

  @override
  Widget build(BuildContext context) {
    if (hours >= 1 && hours <= 12) {
      greeting = "Good Morning";
    } else if (hours >= 12 && hours <= 16) {
      greeting = "Good Afternoon";
    } else if (hours >= 16 && hours <= 21) {
      greeting = "Good Evening";
    } else if (hours >= 21 && hours <= 24) {
      greeting = "Good Night";
    } else {
      print(hours);
    }
    return Scaffold(
      backgroundColor: HexColor("#F1F7FC"),
      body: Stack(
        children: [
          Image.asset("assets/images/dashboardbackground.png"),
          SafeArea(
            child: SingleChildScrollView(
              physics: PageScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          greeting,
                          style: GoogleFonts.lato(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Image.asset("assets/images/onlinestatus.png",
                            height: 34)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 2,
                    color: HexColor("2E2D32"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    splashColor: Colors.blueGrey,
                      onTap: (){
                        Navigator.push(context,
                        PageTransition(child:ClinicalECG(),type:PageTransitionType.bottomToTop));
                      },
                      child: DashboardCard(title: "Clinical\nECG Test")),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      splashColor: Colors.blueGrey,
                      onTap: (){
                        Navigator.push(context,
                            PageTransition(child:LiveECG(),type:PageTransitionType.bottomToTop));
                      },
                      child: DashboardCard(title: "Live\nECG Test")),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    focusColor: Colors.blueGrey,
                      splashColor: Colors.blueGrey,
                      onTap: (){
                        Navigator.push(context,
                            PageTransition(child:TreadmillTest(),type:PageTransitionType.bottomToTop));
                      },
                      child: DashboardCard(title: "Treadmill\nTest")),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
