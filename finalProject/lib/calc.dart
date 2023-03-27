// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  static const routeName = "/calc-page";

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    
    final weight = TextEditingController();
    final height = TextEditingController();
    final bmi = TextEditingController();
    
    
    double cal;
    double result;


    

    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color(0xff1A9218),
        elevation: 0.0,
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text("BMI حاسبة مؤشر كتلة الجسم", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        )
        ),
       body: Column(
       
        children: [ 
                    SizedBox(height: 25,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(":أدخل الوزن (كجم)", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 23,color: Colors.black, fontWeight: FontWeight.w600),),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    textAlign: TextAlign.right,
                    controller: weight,
                    decoration: InputDecoration(
                      hintText: "0", //right to left!!
                      labelStyle: TextStyle(fontSize: 20,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      constraints: BoxConstraints(maxWidth: 390, maxHeight: 50)
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(":أدخل الطول (سم)", style: GoogleFonts.tajawal(textStyle: TextStyle(fontSize: 23,color: Colors.black, fontWeight: FontWeight.w600),),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    textAlign: TextAlign.right,
                    controller: height,
                    decoration: InputDecoration(
                      hintText: "0", //right to left!!
                      labelStyle: TextStyle(fontSize: 20,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      constraints: BoxConstraints(maxWidth: 390, maxHeight: 50),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: () {

                      cal = ((int.parse(weight.text) / (int.parse(height.text) * int.parse(height.text)))) *10000;
                      result = cal;
                      bmi.text = result.toStringAsFixed(2);

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
                          Text("احسب", 
                                      style: GoogleFonts.tajawal(textStyle: TextStyle(color: Colors.white, fontSize: 23,fontWeight: FontWeight.bold),),
                                      ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextField(
                  textAlign: TextAlign.right,
                  controller: bmi,
                  decoration: InputDecoration(
                    hintText: "0.0",
                    labelText: "الناتج",
                    labelStyle: GoogleFonts.tajawal(textStyle: TextStyle(color: Color(0xffAE0404),fontSize: 20, fontWeight: FontWeight.w600),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    constraints: BoxConstraints(maxWidth: 260, maxHeight: 55),
                    ),
                ),
                  


        ],
       
       ),
    );
  }
}