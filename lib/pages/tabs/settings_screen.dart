import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/utilities/button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F1F7FC"),
      body: Center(
        child: SingleChildScrollView(
          physics: PageScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Settings",style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                      color: HexColor("#2E2D32")),)
                ],),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Text("User Settings",style: GoogleFonts.lato(fontWeight: FontWeight.w900,fontSize: 20,color: HexColor("#37C9EE")),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(children: [
                  Image.asset("assets/images/settingsavatar.png",height: 56,width: 56,),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("User Details",style: GoogleFonts.lato(fontSize:17,fontWeight: FontWeight.w800,),),
                    Text("Name, emails, sex and other details",style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w300),)
                  ],)
                ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Device Settings",style: GoogleFonts.lato(fontWeight: FontWeight.w900,fontSize: 20,color: HexColor("#37C9EE")),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Connect by Bluetooth",style: GoogleFonts.lato(fontSize:17,fontWeight: FontWeight.w800,),),
                      Text("Easily connect your device by bluetooth",style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w300),)
                    ],),

                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Test Settings",style: GoogleFonts.lato(fontWeight: FontWeight.w900,fontSize: 20,color: HexColor("#37C9EE")),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ECG Test Durations",style: GoogleFonts.lato(fontSize:17,fontWeight: FontWeight.w800,),),
                      Text("120 Seconds",style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w300),)
                    ],),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                ],),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Heart Test Durations",style: GoogleFonts.lato(fontSize:17,fontWeight: FontWeight.w800,),),
                      Text("120 Seconds",style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w300),)
                    ],),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Software Updates",style: GoogleFonts.lato(fontWeight: FontWeight.w900,fontSize: 20,color: HexColor("#37C9EE")),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Update Available",style: GoogleFonts.lato(fontSize:17,fontWeight: FontWeight.w800,),),
                      Text("v 1.2.33",style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w300),)
                    ],),

                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                ],),
                SizedBox(height: 40,),
                InkWell(
                    onTap: (){
                      FirebaseAuth.instance.signOut();
                    },
                    child: BlueButton(text: "Log Out"))

            ],),
          ),
        ),
      ),
    );
  }
}
