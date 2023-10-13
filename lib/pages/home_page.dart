import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitledapp/model/custom_page_transition_builder.dart';
import 'package:untitledapp/pages/prodduct_detail_page.dart';
import '../utilis/custom_component.dart';
import 'bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentIndex = 0;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    final double itemWidth = (screenWidth - 16.0) / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'PoppinsBold',
              fontWeight: FontWeight.w700,
              color: Color(0xff0f172a),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        leading: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.filter_list,
              color: Colors.black,
            )),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
              tooltip: 'Notification Icon',
              onPressed: () {},
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: IconButton(
              icon: const Icon(
                Icons.person_outline_rounded,
                color: Colors.black,
              ),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.001,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 290.68,
                  height: 40,
                  padding: const EdgeInsets.all(4),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFBFBFB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x1E000000),
                        blurRadius: 24,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: searchController,
                    cursorColor: Colors.brown,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 8),
                      hintText: 'Search for Cars',
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 233, 229, 229),
                        size: 25,
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xFFD4DCE1),
                        fontSize: 14,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/images/filter.svg'),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.002,
          ),
          Container(
            decoration: const BoxDecoration(),
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CustomContainer(
                  imageAsset: 'assets/images/pin.png',
                  text: 'Get EV \nSubscription',
                  backgroundColor: Color(0xFFF9E7EF),
                ),
                CustomContainer(
                  imageAsset: 'assets/images/camera.png',
                  text: 'Book for wedding\n& photography',
                  backgroundColor: Color(0xFFD2EEFF),
                ),
                CustomContainer(
                  imageAsset: 'assets/images/iconDiscount.png',
                  text: 'Get now \ndiscount ',
                  backgroundColor: Color(0xFFD2EEFF),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.004,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Top Rented',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'PoppinsBold',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.004,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AnimationLimiter(

                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing:
                          8.0, // Adjust the horizontal spacing between items
                      mainAxisSpacing:
                          10.0, // Adjust the vertical spacing between items
                      childAspectRatio: itemWidth / 170.0,
                    ),
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        duration: const Duration(milliseconds: 395),
                        columnCount: 2,
                        child: ScaleAnimation(
                          child: FadeInAnimation(child: Center(
                            child: Container(
                              height: size.height * 0.9,
                              width: size.height * 0.70,
                              decoration: const BoxDecoration(),
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Positioned(
                                    bottom: 0,
                                    top: 30,
                                    child: SizedBox(
                                      height: size.height * 0.40,
                                      width: size.height * 0.80,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 160,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      Colors.black.withOpacity(0.2),
                                                  spreadRadius: 1.5,
                                                  blurRadius: 2,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  height: size.height * 0.04,
                                                  width: size.width * 1.8,
                                                  decoration: const BoxDecoration(),
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: size.width * 0.02,
                                                    ),
                                                    const Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: 'TESLA ',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 14,
                                                              fontFamily: 'Inter',
                                                              fontWeight:
                                                                  FontWeight.w700,
                                                              height: 0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: 'RED',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 10,
                                                              fontFamily: 'Inter',
                                                              fontWeight:
                                                                  FontWeight.w500,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.12,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                            'assets/images/star.svg'),
                                                        SizedBox(
                                                          width: size.width * 0.01,
                                                        ),
                                                        const Text(
                                                          '4.0',
                                                          style: TextStyle(
                                                            color:
                                                                Color(0xFFA87B5D),
                                                            fontSize: 10,
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.004,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: size.width * 0.02,
                                                    ),
                                                    const Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'MODEL Y LONG RANGE,',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 8,
                                                              fontFamily:
                                                                  'PoppinsRegular',
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              height: 0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: ' 2022',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 8,
                                                              fontFamily:
                                                                  'PoppinsRegular',
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.002,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: size.width * 0.02,
                                                    ),
                                                    const Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: 'RM',
                                                            style: TextStyle(
                                                              color:
                                                                  Color(0xFFFF6666),
                                                              fontSize: 4,
                                                              fontFamily: 'Inter',
                                                              fontWeight:
                                                                  FontWeight.w300,
                                                              height: 0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '9,000',
                                                            style: TextStyle(
                                                              color:
                                                                  Color(0xFFFF6666),
                                                              fontSize: 8,
                                                              fontFamily: 'Inter',
                                                              fontWeight:
                                                                  FontWeight.w300,
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough,
                                                              height: 0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.072,
                                                    ),
                                                    const Text(
                                                      'RM',
                                                      style: TextStyle(
                                                        color: Color(0xFFA87B5D),
                                                        fontSize: 10,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.01,
                                                    ),
                                                    const Text(
                                                      '8,500/',
                                                      style: TextStyle(
                                                        color: Color(0xFFA87B5D),
                                                        fontSize: 12,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w300,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    const Text(
                                                      'Month',
                                                      style: TextStyle(
                                                        color: Color(0xFFA87B5D),
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'PoppinsRegular',
                                                        fontWeight: FontWeight.w300,
                                                        height: 0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.006,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const ProductDetailPage()));
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(30),
                                                      color:
                                                          const Color(0xFFA87B5D),
                                                    ),
                                                    width: size.width * 0.40,
                                                    height: size.height * 0.041,
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          'Click to see Detail',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                  height: size.height * 0.008,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      height: 18,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '5%',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' OFF',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 6,
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
                                  ),
                                  Positioned(
                                    top: 0,
                                    bottom: 118,
                                    child: Image.asset(
                                      'assets/images/icar.png',
                                      height: 80,
                                      width: 60,
                                    ),
                                    // Image.asset(
                                    //     'assets/images/carimage.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottonBar(),
    );
  }
}
