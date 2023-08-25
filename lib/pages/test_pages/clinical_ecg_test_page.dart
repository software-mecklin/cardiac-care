import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/communication.dart';
import 'package:medcentral/pages/main_screen.dart';
import 'package:medcentral/utilities/button.dart';
import 'package:page_transition/page_transition.dart';

class ClinicalECG extends StatefulWidget {
  const ClinicalECG({super.key});

  @override
  State<ClinicalECG> createState() => _ClinicalECGState();
}

class _ClinicalECGState extends State<ClinicalECG> {
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
                    "CLINICAL ECG TEST",
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
                        Text("The ECG test is a non-invasive and painless\nprocedure that can provide important\ninformation about the function and\nhealth of the heart. ",style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w400),
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
              InkWell(
                  splashColor: Colors.blue.shade50,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Communication()),
                    );
                  },
                  child: TestButton(text: "Start Test")),
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
