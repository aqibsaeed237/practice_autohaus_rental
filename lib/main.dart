import 'package:flutter/material.dart';
import 'package:untitledapp/pages/prodduct_detail_page.dart';
import 'package:untitledapp/pages/splash_page.dart';



void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(color: Colors.white),
        // ),
        useMaterial3: false,
        hintColor: Colors.grey,
        
        focusColor: Colors.brown,

        fontFamily: "PoppinsRegular",
      ),
      home:  const SplashPages(),
    );
  }
}


