// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intro_flutter/calc.dart';
import 'package:intro_flutter/currency.dart';
import 'package:intro_flutter/qr_generate.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}
// ##################################################################

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        "/":(context) => Home_Page(),
        Curr.routeName :(context) => Curr(),
        Qr.routeName :(context) => Qr(),
        Calc.routeName :(context) => Calc(),

      },
    );
  }
}
