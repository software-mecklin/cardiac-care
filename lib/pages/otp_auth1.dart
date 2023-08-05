import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../utilities/button.dart';
import 'otp_auth2.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  static String verify ="";

  @override
  State<GetStarted> createState() => _GetStartedState();
}
TextEditingController phonecontroller = TextEditingController();
class _GetStartedState extends State<GetStarted> {
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
                    "Get Started",
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
            height: 100,
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
                          "Phone Number",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: HexColor("#2E2D32")),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: phonecontroller,
                      maxLength: 10,

                      cursorColor: HexColor("#37C9EE"),
                      style: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                       // suffixIcon: phonecontroller.text.length==10? Icons.error_outline_sharp:Icons.verified_rounded,
                        labelStyle: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: HexColor("#2E2D32")),
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Phone Number',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.blue.shade50,
            onTap: () async {

              showDialog(context: context, builder: (context){
                return Center(child: CircularProgressIndicator());
              });

              await FirebaseAuth.instance.verifyPhoneNumber(
                phoneNumber: '+91'+phonecontroller.text,
                verificationCompleted: (PhoneAuthCredential credential) {},
                verificationFailed: (FirebaseAuthException e) {
                  showDialog(context: context, builder: (context) {
                   return AlertDialog(
                      title: const Text('Invalid Phone Number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('Please enter correct Phone number'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Re-Enter'),
                          onPressed: () {

                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                  );
                },

                codeSent: (String verificationId, int? resendToken) {
                  GetStarted.verify = verificationId;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTP()));
                },
                codeAutoRetrievalTimeout: (String verificationId) {},
              );
            },
            child: const BlueButton(
              text: "Send OTP",
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
