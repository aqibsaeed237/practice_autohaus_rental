import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitledapp/pages/home_page.dart';
import 'package:untitledapp/utilis/constants.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: AnimationLimiter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: 50.0,
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                  children: [
                    SizedBox(height: size.height * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('assets/images/Cancle.svg')),
                        const SizedBox(),
                        const SizedBox(),
                      ],
                    ),
                    SizedBox(height: size.height * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
                          ),
                          radius: 40,
                        ),
                        SizedBox(
                          width: size.height * 0.03,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Mr  Nobody',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.add_location_rounded,
                                  color: Colors.brown,
                                ),
                                SizedBox(
                                  width: size.height * 0.01,
                                ),
                                const Text(
                                  'Multan, Pak',
                                  style: TextStyle(
                                    color: Color(0xFFB1A8B9),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    
                    Row(
                      children: [
                        // const Icon(Icons.settings, color: Colors.white,),

                        SvgPicture.asset('assets/images/setting.svg',),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        const Text(
                          'Setting',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                       Row(
                      children: [
                        // const Icon(Icons.chat_outlined, color: Colors.white,),

                        SvgPicture.asset('assets/images/phone.svg', fit: BoxFit.scaleDown,),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        const Text(
                          'Live Chat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                     Row(
                      children: [
                        // const Icon(Icons.help, color: Colors.white,),

                        SvgPicture.asset('assets/images/help.svg',),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        const Text(
                          'About Us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  
                   
                     SizedBox(
                      height: size.height * 0.4,
                    ),
                     Row(
                      children: [
                        // const Icon(Icons.logout_outlined, color: Colors.white,),

                        SvgPicture.asset('assets/images/out.svg',),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        const Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: size.height * 0.02,
                    ),
                        ]),
            ),
          ),
        ),
      ),
    );
  }
}
