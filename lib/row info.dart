import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class continerInfo extends StatelessWidget {
  String lable1='';
  String lable2='';
  String image='';
   continerInfo( {super.key,required this.lable1,required this.lable2,required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,top: 20),
      child: Container(
        decoration: BoxDecoration(color:Color(0xffF5F5FA) ,borderRadius: BorderRadius.circular(12)),
        width: 350,
        height: 150,
        child:Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            child: Image(image: AssetImage('$image')),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('   $lable1',style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),),
              Text('$lable2',style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 12))),
            ],)
        ],)
        ,),
    );
  }
}
