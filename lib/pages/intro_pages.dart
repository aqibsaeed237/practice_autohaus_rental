// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';
// import 'package:untitledapp/pages/signup_page.dart';

// class IntroPages extends StatefulWidget {
//   const IntroPages({Key? key}) : super(key: key);

//   @override
//   IntroPagesState createState() => IntroPagesState();
// }

// class IntroPagesState extends State<IntroPages> {
//   final introKey = GlobalKey<IntroductionScreenState>();
//   bool isIcon1Visible = true;
//   int selectedIndex = 0;
//   bool isToggled = false;
//   int currentPageIndex = 0;

//   void toggleSwitch() {
//     setState(() {
//       isToggled = !isToggled;
//     });
//   }

//   void toggleIcon() {
//     setState(() {
//       isIcon1Visible = !isIcon1Visible;
//     });
//   }

//   void _onIntroEnd(context) {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (_) => const SignUpPage()),
//     );
//   }

//   Widget _buildImage(String assetName, [double width = 350]) {
//     return SvgPicture.asset('assets/images/$assetName', width: width);
//   }

//   @override
//   Widget build(BuildContext context) {
//     const bodyStyle = TextStyle(
//         fontSize: 16.0, fontWeight: FontWeight.w300, color: Colors.white);
//     const titleStyle = TextStyle(
//         fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.white);

//     const pageDecoration = PageDecoration(
//       titleTextStyle: titleStyle,
//       bodyTextStyle: bodyStyle,
//       bodyPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
//       pageColor: Color(0xff0F172A),
//       imagePadding: EdgeInsets.zero,
//     );

//     return IntroductionScreen(
//       key: introKey,
//       globalBackgroundColor: const Color(0xff0F172A),
//       allowImplicitScrolling: true,
//        autoScrollDuration: 6000,
//       infiniteAutoScroll: true,
      
//       pages: [
//         PageViewModel(
//           title: "Greater Accessibility",
//           body:
//               "Eliminating the barriers to EV \n Ownership through simplified comprehensive solutions.",
//           decoration: pageDecoration.copyWith(
//             bodyFlex: 2,
//             imageFlex: 3,
//             bodyAlignment: Alignment.bottomCenter,
//             imageAlignment: Alignment.topCenter,
//           ),
//           image: _buildImage(
//             'image1.svg',
//             250,
//           ),
//           reverse: true,
//         ),
//         PageViewModel(
//           title: "Greater Accessibility",
//           body:
//               "Eliminating the barriers to EV \n Ownership through simplified comprehensive solutions.",
//           decoration: pageDecoration.copyWith(
//             bodyFlex: 2,
//             imageFlex: 4,
//             bodyAlignment: Alignment.bottomCenter,
//             imageAlignment: Alignment.topCenter,
//           ),
//           image: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Center(
//               child: Column(
//                 children: [
//                   LiteRollingSwitch(
//                     //initial value
//                     value: true,
//                     colorOn: Colors.brown,
//                     colorOff: Colors.transparent,
//                     iconOn: Icons.check,
//                     iconOff: Icons.circle,
//                     textSize: 16.0,
//                     onChanged: (bool state) {
//                       //Use it to manage the different states
//                       print('Current State of SWITCH IS: $state');
//                     },
//                     onTap: () {},
//                     onSwipe: () {},
//                     onDoubleTap: () {},
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   LiteRollingSwitch(
//                     //initial value
//                     value: false,
//                     colorOn: Colors.brown,
//                     colorOff: Colors.transparent,
//                     iconOn: Icons.circle,
//                     iconOff: Icons.cancel,
//                     textSize: 16.0,
//                     onChanged: (bool state) {
//                       //Use it to manage the different states
//                       print('Current State of SWITCH IS: $state');
//                     },
//                     onTap: () {},
//                     onSwipe: () {},
//                     onDoubleTap: () {},
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           reverse: true,
//         ),
//         PageViewModel(
//           title: "Greater Accessibility",
//           body:
//               "Eliminating the barriers to EV \n Ownership through simplified comprehensive solutions.",
//           decoration: pageDecoration.copyWith(
//             bodyFlex: 2,
//             imageFlex: 4,
//             bodyAlignment: Alignment.bottomCenter,
//             imageAlignment: Alignment.topCenter,
//           ),
//           image: _buildImage(
//             'image3.svg',
//           ),
//           reverse: true,
//         ),
//       ],
//       globalFooter: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SizedBox(
//             width: double.infinity,
//             height: 60,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment
//                   .spaceBetween, // Aligns children to start and end
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => const SignUpPage()),
//                     );
//                   },
//                   child: const Text(
//                     "Skip",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 15,
//                         color: Colors.white),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                      _onIntroEnd(context);
//                     // print('currentPageIndex: $currentPageIndex');
//                     // print('pagesLength: ${pages!.length}');
//                     // if (currentPageIndex == pages!.length - 1) {
//                     //   currentPageIndex++;
//                     //   introKey.currentState?.animateScroll(currentPageIndex);
//                     // } else {
//                     //   _onIntroEnd(context);
//                     // }
//                   },
//                   child: const Text(
//                     "Next",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 15,
//                         color: Colors.white),
//                   ),
//                 ),
//               ],
//             )),
//       ),
//       dotsDecorator: const DotsDecorator(
//         size: Size(10.0, 10.0),
//         color: Colors.red,
//         activeSize: Size(24.0, 10.0),
//         activeShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(25.0)),
//         ),
//         activeColor: Colors.red,
//       ),
//       curve: Curves.fastLinearToSlowEaseIn,
//       controlsMargin: const EdgeInsets.all(16),
//       controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
//       showNextButton: false,
//       showDoneButton: false,
//     );
//   }
// }
