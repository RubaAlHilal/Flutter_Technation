// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intro_flutter/qr_generate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calc.dart';
import 'currency.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Text("المساعد", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 36, fontWeight: FontWeight.w900)),),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Curr.routeName);
            },
            child: Container(
              //onTap??
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 41, 130, 39),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [BoxShadow(color: Color.fromARGB(255, 130, 130, 130), spreadRadius: 2, blurRadius: 8)],
                                    border: Border.all(color: Colors.transparent, 
                                    width: 1,
                                    
                   ),
                  ),
                  
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.currency_exchange, size: 35,color: Colors.white,),
                  ],
                ),
              ],
            ),
            Text(
                        "محوّل العملات",
                        style: GoogleFonts.tajawal(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white),),
                        ),
            ],
                  ),
                
                ),
          ),
      
      GestureDetector(
        onTap:() {
          Navigator.pushNamed(context, Calc.routeName);
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(color: Color.fromARGB(255, 41, 130, 39),
                                   borderRadius: BorderRadius.circular(12),
                                   boxShadow: [BoxShadow(color: Color.fromARGB(255, 130, 130, 130), spreadRadius: 5, blurRadius: 8)],
                                    border: Border.all(color: Colors.transparent, 
                                    width: 1,
                    ),
                  ),
      
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.calculate, size: 35,color: Colors.white,),
                  ],
                ),
              ],
            ),
            Text(
                        "BMI حاسبة مؤشر كتلة الجسم" ,
                        style: GoogleFonts.tajawal(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white),),
                        ),
            ],
          ),
        
        ),
      ),


      GestureDetector(
        onTap: () {
              Navigator.pushNamed(context, Qr.routeName);
            },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(color: Color.fromARGB(255, 41, 130, 39),
                                   borderRadius: BorderRadius.circular(12),
                                   boxShadow: [BoxShadow(color: Color.fromARGB(255, 130, 130, 130), spreadRadius: 2, blurRadius: 8)],
                                    border: Border.all(color: Colors.transparent, 
                                    width: 1,
                    ),
                  ),
          
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.qr_code_2, size: 35,color: Colors.white,),
                  ],
                ),
              ],
            ),
            Text(
                        "QR code تحويل رابط الى",
                        style: GoogleFonts.tajawal(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white),),
                        ),
            ],
          ),
        
        ),
      ),
        ],
      )
            
          
        );
  }
}


