import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitledapp/pages/pageintro_screens.dart';
import 'introduction_page2.dart';


class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashPages> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>  const IntroPageScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff0F172A),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(child: SvgPicture.asset("assets/images/logo.svg")),
        ),
    );
  }
}
