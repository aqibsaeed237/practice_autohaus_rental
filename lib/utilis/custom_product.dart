import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomProductCard extends StatefulWidget {
  final String image;
  final String title;
  final double rating;
  final String subtitle;
  final String oldPrice;
  final String newPrice;
  final String suffixIcon;

  const CustomProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.subtitle,
    required this.oldPrice,
    required this.newPrice,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  State<CustomProductCard> createState() => _CustomProductCardState();
}

class _CustomProductCardState extends State<CustomProductCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*1.8,
      width: MediaQuery.sizeOf(context).width*1.5,
      // margin: EdgeInsets.only(top: 3, left: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        child: Stack(
          children: [
            Container(
              child: SvgPicture.asset('assets/images/car.svg'),
            ),

            Positioned(
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                        ),
                        child: Column(
                          children: [
                            // ClipRRect(
                            //   borderRadius: BorderRadius.only(
                            //     topLeft: Radius.circular(16),
                            //     topRight: Radius.circular(16),
                            //   ),
                            //   child: SizedBox(
                            //     width: double.infinity,
                            //     height: 150,
                            //     child: SvgPicture.asset("assets/images/car.svg"),
                            //   ),
                            // ),

                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      widget.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.star, color: Colors.brown),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(widget.rating.toString()),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  widget.subtitle,
                                  style: const TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.w400),
                                )),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(widget.oldPrice,
                                    style: const TextStyle(
                                        fontSize: 5,
                                        decoration: TextDecoration.underline,
                                        color: Colors.red)),
                                const SizedBox(width: 10),
                                Text(widget.newPrice,
                                    style: const TextStyle(
                                        color: Colors.brown,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 5, right: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    border: Border.all(
                                        color: Colors.brown, width: 2.0),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  padding: const EdgeInsets.all(4.0),
                                  child: const Center(
                                    child: Row(children: [
                                      Text(
                                        "Click here to check detail ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Icon(Icons.checklist)
                                    ]),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
