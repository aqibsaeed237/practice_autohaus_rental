// import 'package:flutter/material.dart';

// class CustomPageTransition<T> extends PageRouteBuilder<T> {
//   final WidgetBuilder builder;

//   CustomPageTransition({required this.builder})
//       : super(
//           pageBuilder: (context, animation, secondaryAnimation) {
//             return builder(context);
//           },
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             const begin = Offset(0.1, 0.0);
//             const end = Offset.zero;
//             const curve = Curves.easeIn;
//             var tween =
//                 Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//             return SlideTransition(
//               position: animation.drive(tween),
//               child: child,
//             );
//           },
//         );
// }
