import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/tabs/dashboard.dart';
import 'package:medcentral/pages/main_screen.dart';
import '../utilities/button.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}
TextEditingController namecontroller =TextEditingController();
TextEditingController emailcontroller =TextEditingController();
TextEditingController agecontroller =TextEditingController();
TextEditingController heightcontroller =TextEditingController();
GroupButtonController gendercontroller =GroupButtonController();
String selectedgender = "Male";
List<String>gender = ["Male","Female","Others"];
class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "User Details",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            color: HexColor("#2E2D32")),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                  child: SingleChildScrollView(
                    
                    physics: PageScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Name",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: HexColor("#2E2D32")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: namecontroller,
                          cursorColor: HexColor("#37C9EE"),
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#2E2D32")),
                            border: OutlineInputBorder(),
                            labelText: 'Enter Your Name',
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text(
                              "Email Address",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: HexColor("#2E2D32")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: emailcontroller,
                          cursorColor: HexColor("#37C9EE"),
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#2E2D32")),
                            border: OutlineInputBorder(),
                            labelText: 'Enter your email',
                          ),
                        ),

                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text(
                              "Age",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: HexColor("#2E2D32")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: agecontroller,
                          cursorColor: HexColor("#37C9EE"),
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#2E2D32")),
                            border: OutlineInputBorder(),
                            labelText: 'Enter your age',
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: HexColor("#2E2D32")),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                         Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: GroupButton(
                                    controller: gendercontroller,
                                    buttons: [gender[0],gender[1],gender[2]],
                                    options: GroupButtonOptions(
                                      selectedTextStyle: GoogleFonts.lato(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white
                                      ),
                                        unselectedTextStyle: GoogleFonts.lato(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          color: HexColor("#777777"),
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      selectedBorderColor: HexColor("#37C9EE"),
                                      unselectedBorderColor: HexColor("#777777"),
                                      spacing: 20,
                                      selectedShadow: [],
                                      unselectedShadow: [],
                                      elevation: 0
                                    ),
                                  ),
                                ),

                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text(
                              "Height",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: HexColor("#2E2D32")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: heightcontroller,
                          cursorColor: HexColor("#37C9EE"),
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#2E2D32")),
                            border: OutlineInputBorder(),
                            labelText: 'Enter your height (in ft)',
                          ),
                        ),
                        SizedBox(height: 50,)
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.blue.shade50,
                onTap: () {
                  showDialog(context: context, builder: (context){
                    return Center(child: CircularProgressIndicator());
                  });
                  setState(() {
                    if(gendercontroller.selectedIndex == 0)
                    {
                      selectedgender="Male";
                    }
                    if(gendercontroller.selectedIndex == 1)
                    {
                      selectedgender="Female";
                    }
                    if(gendercontroller.selectedIndex == 2)
                    {
                      selectedgender="Others";
                    }
                  });
                  print(selectedgender);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                child: const BlueButton(
                  text: "Save and Continue",
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
