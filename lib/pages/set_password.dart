import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitledapp/pages/home_page.dart';
import 'package:untitledapp/utilis/constants.dart';
import 'package:untitledapp/utilis/widgets/custom_input_field.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  bool _isObscure = false;

   @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController passwordController = TextEditingController();
    TextEditingController password2Controller = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: AnimationLimiter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  SizedBox(height: size.height * 0.1),
                  const Text(
                    'New Password',
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'PoppinsRegular',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 0),
                  ),
                  SizedBox(height: size.height * 0.1),
                   SvgPicture.asset("assets/images/logo.svg"),
                  SizedBox(height: size.height * 0.09),
                  const Text(
    'Enter your new password, and confirm it by\nentering it a second time',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0,
    ),
),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                               const Text(
                        "New Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.004,
                      ),
                      CustomTextField(
                          controller: passwordController,
                          hintText: "******",
                          obsecureText: _isObscure,
                          suufixicon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            child: _isObscure
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xffB0B0B0),
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    color: Color(0xffB0B0B0),
                                  ),
                          ),
                          onEditingComplete: (String) {}),

                      SizedBox(
                        height: size.height * 0.02,
                      ),
                        const Text(
                        "Confirm New Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.004,
                      ),
                      CustomTextField(
                          controller: password2Controller,
                          hintText: "******",
                          obsecureText: _isObscure,
                          suufixicon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            child: _isObscure
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xffB0B0B0),
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    color: Color(0xffB0B0B0),
                                  ),
                          ),
                          onEditingComplete: (String) {}),

                  
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Container(
                      width: 283,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(
                        child: Text(
                          "Confirm ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsRegular',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
