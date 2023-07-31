import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/main_screen.dart';
import 'package:medcentral/utilities/button.dart';
import 'package:page_transition/page_transition.dart';

class TreadmillTest extends StatefulWidget {
  const TreadmillTest({super.key});

  @override
  State<TreadmillTest> createState() => _TreadmillTestState();
}

class _TreadmillTestState extends State<TreadmillTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#F1F7FC"),
        body: Stack(children: [
          Image.asset("assets/images/testbackground.png"),
          SafeArea(
              child: SingleChildScrollView(
                physics: PageScrollPhysics(),
                child: Column(children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TREADMILL TEST",
                        style: GoogleFonts.lato(
                            fontSize: 34, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        physics: PageScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  color: HexColor("#37C9EE")),
                            ),
                            SizedBox(height: 10,),
                            Text("Live ECG monitoring is a medical procedure\nthat involves continuous real-time\nmonitoring of the electrical activity of the\nheart using an\nelectrocardiogram (ECG) machine.",style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              "Time Duration",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  color: HexColor("#37C9EE")),
                            ),
                            SizedBox(height: 5,),
                            Text("120 Sec",style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w400),

                            ),
                            SizedBox(height: 20,),
                            Text(
                              "Test Areas",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  color: HexColor("#37C9EE")),
                            ),
                            SizedBox(height: 5,),
                            Text("Heart \nMuscles",style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              "Test Text",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  color: HexColor("#37C9EE")),
                            ),
                            SizedBox(height: 5,),
                            Text("Text 1 \nText 2",style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TestButton(text: "Start Test"),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: MainScreen(),
                                type: PageTransitionType.topToBottom));
                      },
                      child: GoHomeButton(text: "Go to Home"))
                ]),
              ))
        ]));
  }
}
