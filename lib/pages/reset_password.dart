import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitledapp/pages/home_page.dart';
import 'package:untitledapp/pages/verify_otp.dart';
import 'package:untitledapp/utilis/constants.dart';
import 'package:untitledapp/utilis/widgets/custom_input_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  //initializing variable data
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                    'Reset Password',
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
                    'Enter the email address associated with your\naccount. We’ll send you a 6- digit OTP code\nto reset your password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
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
                        "Email",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'PoppinsRegular',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: size.height * 0.008),
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'rose123@gmail.com',
                        obsecureText: false,
                        onEditingComplete: (String) {},
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
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
                              builder: (context) => const VerifyOTP()));
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
                          "Send OTP Code ",
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
