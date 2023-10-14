import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitledapp/pages/drawer_page.dart';
import 'package:untitledapp/pages/filter-page.dart';
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DrawerPage()));
            },
            child: SvgPicture.asset(
              'assets/images/side_menu.svg',
              fit: BoxFit.scaleDown,
            )),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: IconButton(
              icon:  const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
              // tooltip: 'Notification Icon',
              onPressed: () {},
            ),
          ),
          Container(
            child:  const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
              ),
              radius: 14,
            ),
          ),
          SizedBox(width: size.width*0.03,)
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.001,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Row(
              children: [
                Container(
                  height: size.height * 0.06,
                  width: size.width * 0.8,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5), // Off-white color
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        blurRadius: 2, // Blur radius
                        offset: const Offset(0, 2), // Offset
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
                SizedBox(
                  width: size.width * 0.02,
                ),
                Container(
                  width: size.width * 0.1,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5), // Off-white color
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        blurRadius: 2, // Blur radius
                        offset: const Offset(0, 2), // Offset
                      ),
                    ],
                  ),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterPage()));
                      },
                      child: SvgPicture.asset(
                        'assets/images/filter.svg',
                        fit: BoxFit.scaleDown,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.002,
          ),
          FadeInUp(
            from: 20,
            child: Container(
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
                          child: FadeInAnimation(
                            child: Center(
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
                                                    color: Colors.black
                                                        .withOpacity(0.2),
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
                                                    decoration:
                                                        const BoxDecoration(),
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.02,
                                                      ),
                                                      const Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'TESLA ',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: 'RED',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 10,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.12,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/images/star.svg'),
                                                          SizedBox(
                                                            width: size.width *
                                                                0.01,
                                                          ),
                                                          const Text(
                                                            '4.0',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFA87B5D),
                                                              fontSize: 10,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                                        width:
                                                            size.width * 0.02,
                                                      ),
                                                      const Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'MODEL Y LONG RANGE,',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 8,
                                                                fontFamily:
                                                                    'PoppinsRegular',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: ' 2022',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 8,
                                                                fontFamily:
                                                                    'PoppinsRegular',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
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
                                                        width:
                                                            size.width * 0.02,
                                                      ),
                                                      const Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'RM',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFFF6666),
                                                                fontSize: 4,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: '9,000',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFFF6666),
                                                                fontSize: 8,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
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
                                                        width:
                                                            size.width * 0.072,
                                                      ),
                                                      const Text(
                                                        'RM',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFA87B5D),
                                                          fontSize: 10,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.01,
                                                      ),
                                                      const Text(
                                                        '8,500/',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFA87B5D),
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          height: 0,
                                                        ),
                                                      ),
                                                      const Text(
                                                        'Month',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFA87B5D),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'PoppinsRegular',
                                                          fontWeight:
                                                              FontWeight.w300,
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
                                                            BorderRadius
                                                                .circular(30),
                                                        color: const Color(
                                                            0xFFA87B5D),
                                                      ),
                                                      width: size.width * 0.40,
                                                      height:
                                                          size.height * 0.041,
                                                      child: const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Text(
                                                            'Click to see Detail',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .library_add_check,
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
