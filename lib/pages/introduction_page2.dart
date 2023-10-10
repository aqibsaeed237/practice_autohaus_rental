
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitledapp/utilis/constants.dart';

import '../model/intoduction_model.dart';
import 'login_page.dart';


class IntroductionPage extends StatefulWidget {
  IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  int currentIndex = 0;
  PageController? pageController;
  List<IntroductionModel> screens = <IntroductionModel>[
    IntroductionModel(
      img: 'assets/images/image1.svg',
      text: "Greater Accessibility",
      desc:
      "Eliminating the barriers to EV \nownership through simplified \ncomprehensive solutions.",
      bg: Colors.white,
      button: Color(0xFF4756DF),
    ),
    IntroductionModel(
    img: 'assets/images/image3.svg',
  text: "Greater Accessibility",
  desc:
  "Eliminating the barriers to EV \nownership through simplified \ncomprehensive solutions.",
      bg: Color(0xFF4756DF),
      button: Colors.white,
    ),
    IntroductionModel(
      img: 'assets/images/image1.svg',
      text: "Greater Accessibility",
      desc:
      "Eliminating the barriers to EV \nownership through simplified \ncomprehensive solutions.",
      bg: Colors.white,
      button: Color(0xFF4756DF),
    ),
  ];

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
          itemCount: screens.length,
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Container(
                  height: 130,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Text(
                        screens[index].text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        screens[index].desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                SvgPicture.asset(
                  screens[index].img,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.20),
                Container(
                  height: 10.0,
                  color: Colors.transparent,
                  child: ListView.builder(
                    itemCount: screens.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3.0),
                            width: currentIndex == index ? 20 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: currentIndex == index
                                  ? Colors.brown
                                  : Colors.brown,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        print(index);
                        if (index == screens.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        }
                        pageController!.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.bounceIn,
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
