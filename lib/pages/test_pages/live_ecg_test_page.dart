import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/main_screen.dart';
import 'package:medcentral/utilities/button.dart';
import 'package:page_transition/page_transition.dart';

class LiveECG extends StatefulWidget {
  const LiveECG({super.key});

  @override
  State<LiveECG> createState() => _LiveECGState();
}

class _LiveECGState extends State<LiveECG> {
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
                    "LIVE ECG TEST",
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "During a treadmill test, the patient walks or\nruns on a treadmill while their heart rate,\nblood pressure, and ECG are monitored.",
                          style: GoogleFonts.lato(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Time Duration",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                              color: HexColor("#37C9EE")),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "120 Sec",
                          style: GoogleFonts.lato(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Test Areas",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                              color: HexColor("#37C9EE")),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Heart \nMuscles",
                          style: GoogleFonts.lato(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Test Text",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                              color: HexColor("#37C9EE")),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Text 1 \nText 2",
                          style: GoogleFonts.lato(
                              fontSize: 16, fontWeight: FontWeight.w400),
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
                            type: PageTransitionType.fade));
                  },
                  child: GoHomeButton(text: "Go to Home"))
            ]),
          ))
        ]));
  }
}
