// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Curr extends StatefulWidget {
  const Curr({super.key});

  static const routeName = "/curr-page";

  @override
  State<Curr> createState() => _CurrState();
}

class _CurrState extends State<Curr> {
  @override
  Widget build(BuildContext context) {

    final _amount = TextEditingController();
    final _dollar = TextEditingController();
    final _pound = TextEditingController();
    double cal1;
    double cal2;
    double result1;
    double result2;
    
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A9218),
        elevation: 0.0,
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text("محوّل العملات", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        )
        
        ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(":أدخل المبلغ المراد تحويله", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 23,color: Colors.black, fontWeight: FontWeight.w600),),),
                  ],
                ),
                SizedBox(height: 15,),
                TextField(
                  textAlign: TextAlign.right,
                  controller: _amount,
                  decoration: InputDecoration(
                    hintText: "0.0", //right to left!!
                    labelStyle: TextStyle(fontSize: 20,color: Colors.grey.shade400),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    constraints: BoxConstraints(maxWidth: 390, maxHeight: 55)
                  ),
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap:() => {
                    
                    cal1 = int.parse(_amount.text) * 3.75, 
                    result1 = cal1,
                    _dollar.text = result1.toString(),

                    cal2 = int.parse(_amount.text) * 4.05, 
                    result2 = cal2,
                    _pound.text = result2.toString(),

                  },


                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xffFF9292),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xffAE0404), 
                                      width: 2,
                                    
                   ),
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("تحويل", 
                                    style: GoogleFonts.tajawal(textStyle: TextStyle(color: Colors.white, fontSize: 23,fontWeight: FontWeight.bold),),
                                    ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                // Padding(
                //   padding: const EdgeInsets.only(left:145),
                //   child: Text("\$ المبلغ بعد التحويل بالدولار", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),),
                // ),
                // SizedBox(height: 15,),
                TextField(
                  textAlign: TextAlign.right,
                  controller: _dollar,
                  decoration: InputDecoration(
                    hintText: "0.0",
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    labelText: "\$ المبلغ بعد التحويل بالدولار",
                    labelStyle: GoogleFonts.tajawal(textStyle: TextStyle(color: Color(0xffAE0404),fontSize: 20, fontWeight: FontWeight.w600),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    constraints: BoxConstraints(maxWidth: 260, maxHeight: 55),
                    ),
                ),
                // SizedBox(height: 15,),
                // Padding(
                //   padding: const EdgeInsets.only(left:145),
                //   child: Text("€ المبلغ بعد التحويل باليورو", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),),
                // ),
                SizedBox(height: 35,),
                TextField(
                  textAlign: TextAlign.right,
                  controller: _pound,
                  decoration: InputDecoration(
                    hintText: "0.0",
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    labelText: "€ المبلغ بعد التحويل باليورو",
                    labelStyle: GoogleFonts.tajawal(textStyle: TextStyle(color: Color(0xffAE0404), fontSize: 20, fontWeight: FontWeight.w600),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    constraints: BoxConstraints(maxWidth: 260, maxHeight: 55),
                    ),
                ),
            ],
          ),
        )
        ),
        
    );
  }
}