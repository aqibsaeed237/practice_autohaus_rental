import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitledapp/model/custom_page_transition_builder.dart';
import 'package:untitledapp/pages/home_page.dart';
import 'package:untitledapp/pages/reset_password.dart';
import 'package:untitledapp/pages/signup_page.dart';
import 'package:untitledapp/utilis/widgets/custom_input_field.dart';
import 'package:untitledapp/utilis/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //initializing variable data
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = false;
  bool _check = false;

// widget is building
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
                SvgPicture.asset("assets/images/logo.svg"),
                SizedBox(
                  height: size.height * 0.1,
                ),
                const Text(
                  'Hey there,\nwelcome back',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PoppinsRegular',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                const Text(
                  'Please login your account.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'PoppinsRegular',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
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
                      hintText: 'rose@gmail.cpm',
                      obsecureText: false,
                      onEditingComplete: (String) {},
                    ),
                        SizedBox(
                  height: size.height * 0.03,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PoppinsRegular',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * 0.008),
                CustomTextField(
                    controller: _passwordController,
                    hintText: "******",
                
                    obsecureText: _isObscure,
                    // suffixIcon: IconButton(
                    //   icon: Icon(_isObscure
                    //       ? Icons.visibility_off
                    //       : Icons.visibility),
                    //   onPressed: () {
                    //     setState(() {
                    //       _isObscure = !_isObscure;
                    //     });
                    //   },
                    // ),
                    suufixicon: GestureDetector(onTap: (){
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    child:_isObscure ?   const Icon(Icons.visibility_off, color: Color(0xffB0B0B0),) : const Icon(Icons.visibility, color: Color(0xffB0B0B0),),
                    
                    ),
                    onEditingComplete: (String) {}),
                  ],
                ),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _check,
                          checkColor: Colors.brown,
                          activeColor: Colors.white,
                          side: const BorderSide(color: AppColors.brown),
                          onChanged: (value) {
                            setState(() {
                              _check = value!;
                            });
                            // Handle checkbox value change
                          },
                        ),
                        const Text(
                          "Remember me ",
                          style: TextStyle(
                            color: AppColors.greyWhite,
                            fontSize: 12,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResetPassword()));
                      },
                      child: const Text(
                        'Forgot your Password?',
                        style: TextStyle(
                          color: AppColors.greyWhite,
                          fontSize: 12,
                          fontFamily: 'PoppinsRegular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
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
                        "Login ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoppinsRegular',
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 14,
                          color: AppColors.greyWhite,
                        ),
                        children: [
                          TextSpan(
                            text: 'Signup',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: 'PoppinsRegular',
                                fontSize: 16,
                                decoration: TextDecoration.underline),
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
        ),
      ),
    );
  }
}
