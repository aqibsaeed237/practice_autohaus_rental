import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Center(
        child: Container(
          height: 168,
          width: 252,
          decoration: BoxDecoration(
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 160,
                width: 182,
                child: Column(
                  children: [
                    Container(
                      width: 182,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),

                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 180,
                            decoration: BoxDecoration(

                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'TESLA',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'RED',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.brown),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '4.0',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'MODEL Y LONG RANGE,',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: '2022',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text.rich(
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
                              SizedBox(
                                width: 2.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'RM',
                                    style: TextStyle(
                                      color: Color(0xFFA87B5D),
                                      fontSize: 7,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '8,500/',
                                    style: TextStyle(
                                      color: Color(0xFFA87B5D),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w300,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.brown,
                              ),
                              width: size.width * 0.32,
                              height: size.height * 0.06,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Click to see Detail',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.library_add_check,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                bottom:118 ,
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: SvgPicture.asset('assets/images/image1.svg'),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '5%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
