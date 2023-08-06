import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcentral/pages/auth_page.dart';
import 'package:medcentral/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => AuthPage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              child: Image.asset("assets/images/splashbackgroung.png"),
            ),
            SafeArea(
              child: SingleChildScrollView(
                physics: PageScrollPhysics(),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            height: 94,
                            width: 94,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "MedCentral",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w800, fontSize: 34),
                          ),
                          const SizedBox(
                            height: 130,
                          ),
                          Image.asset(
                            "assets/images/splashavatar.png",
                            scale: 1.8,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
