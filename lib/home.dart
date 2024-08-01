import 'package:c11_exam_sun_online/appColor.dart';
import 'package:c11_exam_sun_online/row%20info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'elevatedButton.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='Home';
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int defaultChoiceIndex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(


      title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
            children: [
              Image.asset('assets/image/Logo Small.png',), Text(
                'Audi',style: TextStyle(fontFamily:"alfont",color: AppColor.AppBarColor,fontWeight: FontWeight.bold,fontSize: 20,),

              ),Text(
                'Books',style: TextStyle(fontFamily:"alfont,",color: AppColor.AppBarColor,fontWeight: FontWeight.w300,fontSize: 25,height: 35),

              ),Text(
                '.',style: TextStyle(fontFamily:"alfont",color: Color(0xffF77A55),height:30,fontSize: 30),


              ),
            ],
          ),


          Icon(Icons.settings_rounded,size: 28, color: AppColor.AppBarColor,),

        ],
      ),
    ) ,
bottomNavigationBar: BottomNavigationBar(
  selectedItemColor: AppColor.AppBarColor,
  items: [
BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
BottomNavigationBarItem(icon: Icon(Icons.library_books_rounded),label: 'library'),

],),
body: SingleChildScrollView(
  child: Column(
  
    children: [
      Padding(
        padding: const EdgeInsets.all( 30),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
        
        
         Text('Categories',style: GoogleFonts.poppins(  textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),),
         Text('See more',style: GoogleFonts.poppins(  textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.AppBarColor)),),
        
                ],),
  
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
          Row(
            children: [
              ElevatButton(   label: 'Art',),
              ElevatButton(label: 'Business',),
              ElevatButton(label: 'Comedy',),
              ElevatButton(label: 'Drama',),
  
  
  
            ],
          ),
  
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:  20,horizontal: 15),      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
  
            Text('Recommended For You',style: GoogleFonts.poppins(  textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),),
            Text('See more',style: GoogleFonts.poppins(  textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.AppBarColor)),),
  
          ],),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 5,),
          child: Row(
            children: [
               Image(width:290,height:350,image: AssetImage('assets/image/Image Placeholder 400x600.png')),
              Image( height: 300,width: 200,image: AssetImage('assets/image/secend_pic.png')),
  
  
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:  10,horizontal: 15),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
  
  
          Text('Best Seller',style: GoogleFonts.poppins(  textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),),
          Text('See more',style: GoogleFonts.poppins(  textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.AppBarColor)),),
  
        ],),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
  
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
  
            children: [
              continerInfo(lable1: 'Light Mage',lable2: 'Laurie Forest',image:'assets/image/Image Placeholder 240x240.png' ,),
  
              continerInfo(lable1: 'Light Mage',lable2: 'Laurie Forest',image:'assets/image/Image Placeholder 240x240.png' ,),
  
            ],
          ),
        ),
      ),
    ],
  
  ),
),
    );

  }
}
