import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitledapp/utilis/constants.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _phoneController = TextEditingController();


  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   // var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 14,
            ),
            const Text("Create your\nNew Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'PoppinsRegular',
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 45,
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
                    ))
              ],
            ),
            Row(

              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "First Name",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        style: const TextStyle(color: Colors.white, fontFamily: 'PoppinsRegular',),
                        cursorColor: Colors.brown,
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          

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
                ),
                const SizedBox(width: 6,),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Last Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        style: const TextStyle(
                          fontFamily: 'PoppinsRegular',
                          color: AppColors.white,
                        ),
                        cursorColor: Colors.brown,
                        decoration: InputDecoration(
                          hintText: 'Last Name',
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
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Column(
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                      "Mobile number",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w400,
                      )
                  ),
                ),
                const SizedBox(height: 8,),
                IntlPhoneField(  
                  decoration: InputDecoration(
                    hintText: 'Enter your Mobile number',
                  
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white, fontFamily: 'PoppinsRegular'),
                  
                  initialCountryCode: '+92',
                  dropdownTextStyle: const TextStyle(color: Colors.grey),
                  dropdownIcon: const Icon(Icons.arrow_drop_down, color: Colors.grey,),
                  showCountryFlag: false,
                  showDropdownIcon: true,
                  

                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  dropdownIconPosition: IconPosition.trailing,
                  disableLengthCheck: true,

                ),



                const SizedBox(height: 10,),
                Column(
                  children: [
                     const Align(
                       alignment: Alignment.bottomLeft,
                       child: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'PoppinsRegular',
                          fontWeight: FontWeight.w400,
                    ),
                       ),
                     ),
                    const SizedBox(height: 8),
                    TextFormField(
                      cursorColor: Colors.brown,
                      style: const TextStyle(color: Colors.white,fontFamily: 'PoppinsRegular',),
                      decoration: InputDecoration(
                        hintText: 'Email',
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
                const SizedBox(height: 10,),
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      cursorColor: Colors.brown,
                      style: const TextStyle(color: Colors.white,fontFamily: 'PoppinsRegular',),
                      decoration: InputDecoration(
                        hintText: 'Password',
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
                )
              ],
            ),
          const SizedBox(height: 14,),
            Wrap(
              children: [
                const Text('By creating an account, you agree to ', style: TextStyle(color: Colors.white,fontFamily: 'PoppinsRegular',),),
                GestureDetector(
                  onTap: () {
                    // Open the AutoHaus Retals Terms of Use page
                  },
                  child: const Text(
                    'AutoHaus Retals ',
                    style: TextStyle(color: Colors.brown,fontFamily: 'PoppinsRegular',),
                  ),
                ),
                const Text(
                  'Terms of Use and ',
                  style: TextStyle(color: Colors.white,fontFamily: 'PoppinsRegular',),
                ),
                GestureDetector(
                  onTap: () {
                    // Open the AutoHaus Retals Privacy Policy page
                  },
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.brown,fontFamily: 'PoppinsRegular',),
                  ),
                ),
              ],
            ),

             const SizedBox(height: 14,),
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(color: Colors.white),
                  value: false,
                  onChanged: (value) {
                    // Handle checkbox value change
                  },
                ),
                const Wrap(
                  children: [
                    Text(
                      "I don’t want to get deals, discount \nand updates",
                      style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
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

        const SizedBox(
          height: 14,
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
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),


          ],
        ),
      ),
    ));
  }
}
