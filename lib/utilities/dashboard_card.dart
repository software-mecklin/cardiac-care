import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  const DashboardCard( {super.key,required this.title});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor("#37C9EE"),
      child: SizedBox(
        height: 180,
        width: MediaQuery.of(context).size.width - 60,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(title,style: GoogleFonts.lato(fontSize: 24,fontWeight: FontWeight.w700),),
              SizedBox(height: 10,),
              Text("Take a quick test and find out \nyour heart’s statistics",style: GoogleFonts.lato(fontSize: 12,fontWeight: FontWeight.w400),),
              SizedBox(height: 15,),
              Image.asset("assets/images/arrow.png",width: 89,),
                SizedBox(height: 20,),
            ],),
            Image.asset("assets/images/dashboardcardimg.png",height: 116,width: 93,),

          ],
        ),

      ),
    );
  }
}
