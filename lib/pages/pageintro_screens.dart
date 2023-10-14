import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitledapp/model/intro_model.dart';
import 'package:untitledapp/pages/signup_page.dart';
import 'package:untitledapp/utilis/constants.dart';

class IntroPageScreen extends StatefulWidget {
  const IntroPageScreen({Key? key}) : super(key: key);

  @override
  State<IntroPageScreen> createState() => _IntroPageScreenState();
}

class _IntroPageScreenState extends State<IntroPageScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  /// Animation Widget
  Widget animate(
    int index,
    int delay,
    Widget child,
  ) {
    if (index == 1) {
      return FadeInDown(
        delay: Duration(milliseconds: delay),
        child: child,
      );
    }
    return FadeInUp(
      delay: Duration(milliseconds: delay),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: listOfItems.length,
                onPageChanged: (newIndex) {
                  setState(() {
                    currentIndex = newIndex;
                  });
                },
                physics:  const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TITLE TEXT
                      animate(
                        index,
                        300,
                        Padding(
                          padding:  const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text(
                            listOfItems[index].title,
                            textAlign: TextAlign.center,
                             style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'PoppinsRegular',
                                color: Colors.white),
                          ),
                        ),
                      ),
                     
                      // SUBTITLE TEXT
                      animate(
                        index,
                        500,
                        Text(
                          listOfItems[index].subTitle,
                          textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'PoppinsRegular',
                                color: Colors.white54),
                        ),
                      ),

                      // IMG
                      Container(
                       height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 60, 20, 10),
                        child: animate(
                          index,
                          100,
                          SvgPicture.asset(listOfItems[index].img, ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),

            // PAGE INDICATOR
            SmoothPageIndicator(
              controller: pageController,
              count: listOfItems.length,
              effect: const ExpandingDotsEffect(
                spacing: 6.0,
                radius: 10.0,
                dotWidth: 10.0,
                dotHeight: 10.0,
                expansionFactor: 3.8,
                dotColor: Colors.brown,
                activeDotColor: Colors.brown,
              ),
              onDotClicked: (newIndex) {
                setState(() {
                  currentIndex = newIndex;
                  pageController.animateToPage(newIndex,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                });
              },
            ),

            // Skip and Next Buttons
            Padding(
             padding: const EdgeInsets.fromLTRB(12, 20, 20, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                         fontFamily: 'PoppinsRegular'
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (currentIndex == listOfItems.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      }
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'PoppinsRegular'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
