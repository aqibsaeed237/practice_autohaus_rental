import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitledapp/pages/home_page.dart';
import 'package:untitledapp/pages/signup_page.dart';
import 'package:untitledapp/utilis/constants.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height*0.045
              ),
              Center(
                child: SizedBox(
                  width: 247.85,
                  height: 45.83,
                  child: SvgPicture.asset("assets/images/logo.svg"),
                ),
              ),
              SizedBox(height: size.height*0.045,),
              const Center(
                child: Text(
                  'Hey there,\nwelcome back',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PoppinsRegular',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                  height: size.height*0.024
              ),
              const Center(
                child: Text(
                  'Please login your account.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'PoppinsRegular',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),

              SizedBox(height: size.height*0.06,),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'PoppinsRegular',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    cursorColor: Colors.brown,
                    style: const TextStyle(color: Colors.white, fontFamily: 'PoppinsRegular'),
                    decoration: InputDecoration(
                      hintText: 'rose123@gmail.com',
                      

                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: size.height*0.03,),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'PoppinsRegular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.02),
                  TextFormField(
                    cursorColor: Colors.brown,
                    style: const TextStyle(color: Colors.white, fontFamily: 'PoppinsRegular'),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons
                                .visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: size.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        checkColor: Colors.brown,
                        activeColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        onChanged: (value) {
                          // Handle checkbox value change
                        },
                      ),
                      const Text(
                        "Remember me ",
                        style: TextStyle(
                         color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: const Text(
                      'Forgot your Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],

              ),
              SizedBox(height: size.height*0.04,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                },
              
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(
                        color: Colors.brown, width: 2.0),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: const EdgeInsets.all(10),
                  child:const Center(
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
              SizedBox(height: size.height*0.04,),

              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'PoppinsRegular',
                        fontSize: 14,
                        color: AppColors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Signup',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: 'PoppinsRegular',
                            fontSize: 16,
                            decoration: TextDecoration.underline
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
      ),


    );
  }
}