import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:untitledapp/pages/privacy_policy_page.dart';
import 'package:untitledapp/utilis/widgets/custom_input_field.dart';
import 'package:untitledapp/utilis/constants.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool check = false;
  String countryCode = '';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fnameController = TextEditingController();
  bool _isObscure = false;
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void onCountryChange(PhoneNumber number) {
    setState(() {
      countryCode = number.countryISOCode;
      print("countryCode $countryCode");
    });
  }

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
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  const Text("Create your\nNew Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // height: 40,
                        // width: 45,
                        child: SvgPicture.asset("assets/images/license.svg"),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "Enter your name as it appears on your\ndriving license",
                        style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "First Name",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PoppinsRegular',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            SizedBox(height: size.height * 0.008),
                            CustomTextField(
                                controller: _fnameController,
                                hintText: "First Name",
                                obsecureText: false,
                                onEditingComplete: (String) {}),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.height * 0.01,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Last Name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'PoppinsRegular',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.008),
                            CustomTextField(
                                controller: _lnameController,
                                hintText: "Last Name",
                                obsecureText: false,
                                onEditingComplete: (String) {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text(
                        "Mobile number",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                          )),

                      SizedBox(
                        height: size.height * 0.004,
                      ),
                      IntlPhoneField(
                        style:
                            const TextStyle(color: AppColors.greyWhite, fontSize: 14),
                        controller: _phoneController,
                        initialCountryCode: 'Pak',
                        disableLengthCheck: true,
                        // disableAutoFillHints: true,
                        // showCountryFlag: false,
                        // showDropdownIcon: false,
                        dropdownTextStyle:
                            const TextStyle(color: AppColors.greyWhite),
                        dropdownIcon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.greyWhite,
                        ),
                        onChanged: onCountryChange,
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(color: Colors.transparent),
                          contentPadding:
                              const EdgeInsets.only(top: 15, left: 20, bottom: 15),
                          isDense: true,
                          hintText: "Mobile number",
                          hintStyle: const TextStyle(
                              color: AppColors.greyWhite, fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              color: AppColors.greyWhite,
                              width: 1.0,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              // color: textLabelColor,
                              width: 1.0,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              //  color: textLabelColor,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              //  color: textLabelColor,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'PoppinsRegular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.004,
                      ),
                      CustomTextField(
                          controller: _emailController,
                          hintText: "Email",
                          obsecureText: false,
                          onEditingComplete: (String) {}),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text(
                        "Password",
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
                          controller: _passwordController,
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
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: RichText(
                          text:  TextSpan(
                              text: "By creating an account, you agree to ",
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'PoppinsRegular',
                                fontSize: 14,
                              ),
                              children: [
                                const TextSpan(
                                  text: "AutoHaus Rental's Terms of Use ",
                                  style: TextStyle(
                                    fontFamily: 'PoppinsRegular',
                                    fontSize: 14,
                                    color: AppColors.brown,
                                  ),
                                //   recognizer: TapGestureRecognizer()..onTap = () => Navigator.push(
                                //       context, MaterialPageRoute(builder: (context) => const PrivacyPolicy())),
                                ),
                                const TextSpan(
                                    text: " and ",
                                    style: TextStyle(
                                        fontFamily: 'PoppinsRegular',
                                        color: AppColors.white,
                                        fontSize: 14)),
                                 TextSpan(
                                  text: 'Privacy Policy',
                                  style: const TextStyle(
                                    fontFamily: 'PoppinsRegular',
                                    fontSize: 14,
                                    color: AppColors.brown,
                                  ),
                                 recognizer: TapGestureRecognizer()..onTap = () => Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => const PrivacyPolicy())),
                                ),
                              ]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      //  SizedBox(
                      //   height: size.height * 0.02,
                      // ),
                      Row(
                        children: [
                          Checkbox(
                            value: check,
                            checkColor: Colors.brown,
                            activeColor: Colors.white,
                            side: const BorderSide(color: AppColors.brown),
                            onChanged: (value) {
                              setState(() {
                                check = value!;
                              });
                              // Handle checkbox value change
                            },
                          ),
                          const Text(
                            "I don’t want to get deals, discount and\n updates.",
                            style: TextStyle(
                              fontFamily: 'PoppinsRegular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyWhite,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Container(
                      width: 283,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border.all(color: Colors.brown, width: 2.0),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          "SignUp ",
                          style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: RichText(
                          text: const TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'PoppinsRegular',
                              color: AppColors.greyWhite,
                            ),
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
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
