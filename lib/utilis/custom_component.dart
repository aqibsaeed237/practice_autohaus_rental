import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  final String imageAsset;
  final String text;
  final Color backgroundColor;

  const CustomContainer({super.key,
    required this.imageAsset,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      margin: const EdgeInsets.all(8),
      // Adjust the margin as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor, // Set the background color here
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imageAsset,
              width: 30,
              height: 30,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontFamily: 'PoppinsRegular'
            ),
          ),
        ],
      ),
    );
  }
}




