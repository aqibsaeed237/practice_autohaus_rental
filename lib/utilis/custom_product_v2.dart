import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomProduct extends StatefulWidget{
  const CustomProduct({super.key});

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 166,
      height: 252,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 166,
            height: 252,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 166,
                  height: 252,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 166,
                        height: 130,
                        child: SvgPicture.asset("assets/images/car.svg"),
                       
                      ),
                      Stack(
                        children: [
                          const Positioned(
                            left: 0,
                            top: 0,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'TESLA',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'RED',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 16,
                            top: 0,
                            child: Text(
                              '4.0',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 11,
                              height: 11,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFA87B5D),
                                shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.38,
                                  pointRounding: 0,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'MODEL Y LONG RANGE,',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '2022',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 8,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 166,
                        height: 57,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 8.05,
                              top: 9,
                              child: SizedBox(
                                width: 127.77,
                                height: 48,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 6,
                                      child: SizedBox(
                                        width: 35.21,
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'RM',
                                                style: TextStyle(
                                                  color: Color(0xFFFF6666),
                                                  fontSize: 5,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w300,
                                                  height: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '9,000',
                                                style: TextStyle(
                                                  color: Color(0xFFFF6666),
                                                  fontSize: 10,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w300,
                                                  decoration: TextDecoration.lineThrough,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 41.25,
                                      top: 0,
                                      child: SizedBox(
                                        width: 61.37,
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'RM',
                                                style: TextStyle(
                                                  color: Color(0xFFA87B5D),
                                                  fontSize: 7,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '8,500/',
                                                style: TextStyle(
                                                  color: Color(0xFFA87B5D),
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w300,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 99.60,
                                      top: 6,
                                      child: SizedBox(
                                        width: 28.17,
                                        child: Text(
                                          ' Month',
                                          style: TextStyle(
                                            color: Color(0xFFA87B5D),
                                            fontSize: 8,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 166,
                                height: 41,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                    // left: BorderSide(color: Color(0xFFF5F5F5)),
                                    // top: BorderSide(color: Color(0xFFF5F5F5)),
                                    // right: BorderSide(color: Color(0xFFF5F5F5)),
                                    // bottom: BorderSide(width: 1, color: Color(0xFFF5F5F5)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 152,
                        height: 32,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFA87B5D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Click to see Details',
                              style: TextStyle(
                                color: Color(0xFFF5F5F5),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}