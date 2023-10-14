import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitledapp/pages/drawer_page.dart';
import 'package:untitledapp/pages/privacy_policy_page.dart';
import 'package:untitledapp/pages/reset_password.dart';
import 'package:untitledapp/pages/signup_page.dart';
import 'package:untitledapp/pages/splash_page.dart';
import 'package:untitledapp/utilis/scrollbehaviour.dart';


import 'package:device_preview/device_preview.dart';

void main() => runApp(
  // DevicePreview(
    // enabled: !kReleaseMode,
    // builder: (context) =>
    const MyApp(), // Wrap your app
//  ),
);


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AUTOHAUS Rental',
      debugShowCheckedModeBanner: false,
      // ignore: deprecated_member_use
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      scrollBehavior: MyBehavior(),
      theme: ThemeData(
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(color: Colors.white),
        // ),
        useMaterial3: false,  
        focusColor: Colors.brown,

        fontFamily: "PoppinsRegular",
      ),
      home:  const SplashPages(),
    );
  }
}


