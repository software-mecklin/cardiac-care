import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  final String image, title, description;
  const OnBoardingScreen({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: PageScrollPhysics(),
        child: Stack(
          children: [
            Image.asset("assets/images/onboardingbackground.png"),
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 50,),
                      Image.asset(image,scale: 1.8,),
                      SizedBox(height: 150,),
                      Text(
                        title,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w800, fontSize: 34),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.all(10),

                        child: Text(
                          description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400, fontSize: 17,color: Colors.grey,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
