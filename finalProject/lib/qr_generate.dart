// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr extends StatefulWidget {
  const Qr({super.key});
  
  static const routeName = "/qr-page";

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  String input = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xff1A9218),
        elevation: 0.0,
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text("QR  إنشاء رمز الإستجابة السريعة", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        )
        
        ),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 95,),
          Text(":أدخل الرابط لإنشاء رمز الاستجابة السريعة", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),),),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged:(value) {
                setState(() {
                  input = value;
                });
              },
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      hintText: "https://google.com", 
                      labelStyle: TextStyle(fontSize: 18,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      constraints: BoxConstraints(maxWidth: 370),
                    ),
                  ),
          ),
          SizedBox(height: 15,),
          
          // RawMaterialButton(
          //   onPressed: () {},
          //   fillColor: Color(0xffFF9292),
          //   shape: StadiumBorder(),
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 45,
          //     vertical: 12,
          //   ),
          //   child: Text("إنشاء", 
          //        style: GoogleFonts.tajawal(textStyle: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
          //   ),
          //   ),
          // Container(
          //         width: 150,
          //         height: 50,
          //         decoration: BoxDecoration(color: Color(0xffFF9292),
          //                           borderRadius: BorderRadius.circular(12),
          //                           border: Border.all(
          //                             color: Color(0xffAE0404), 
          //                             width: 2,
                                    
          //          ),
          //         ),
                  
          //         child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //   children:[
          //   Text("إنشاء", 
          //        style: GoogleFonts.tajawal(textStyle: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
          //   ),
          //   ],
            
          //         ),
                
          //       ),
                SizedBox(height:25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: QrImage(
                        data: input,
                        size: 200,
                    ),
                    )
                    
                  ],
                )
        ],
        
      ),
    );
  }
}