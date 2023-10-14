import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:untitledapp/pages/login_page.dart';
import 'package:untitledapp/utilis/constants.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        
                        const Text(
                          'Review Terms of\nService & Privacy Policy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const SizedBox(),
                        ],
                    ),
                    SizedBox(height: size.height * 0.04),
                        const Text(
                          'Fara samodade. Geoskapet bir. Teleponas plassa. Dor viling. Bemorad digital valuta. Betresk. Sobir sesat. Obelt. Puhyktigt beteendedesign. Blåljuspersonal supranera. Punihyning. Predövis. Dötås gigada. Antesorade makrov. Makrojånde diskade. Ninas. Odevis pepobel. Makrossade hyponade. Mäl. Son motint. Fara samodade. Geoskapet bir. Teleponas plassa. Dor viling. Bemorad digital valuta. Betresk. Sobir sesat. Obelt. Puhyktigt beteendedesign. Blåljuspersonal supranera. Punihyning. Predövis. Dötås gigada. Antesorade makrov. Makrojånde diskade. Ninas. Odevis pepobel. Makrossade hyponade. Mäl. Son motint. Blåljuspersonal supranera. Punihyning. Predövis. Dötås gigada. Antesorade makrov. Makrojånde diskade. Ninas. Odevis pepobel. Makrossade hyponade. Mäl. Son motint.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14,
                            fontFamily: 'Inter'
                          ),
                        ),
                         SizedBox(height: size.height * 0.03),
                        const Text(
                          'Fara samodade. Geoskapet bir. Teleponas plassa. Dor viling. Bemorad digital valuta. Betresk. Sobir sesat. Obelt. Puhyktigt beteendedesign. Blåljuspersonal supranera. Punihyning. Predövis. Dötås gigada. Antesorade makrov. Makrojånde diskade. Ninas. Odevis pepobel. Makrossade hyponade. Mäl. Son motint. Fara samodade. Geoskapet bir. Teleponas plassa. Dor viling. Bemorad digital valuta. Betresk. Sobir sesat. Obelt. Puhyktigt beteendedesign. Blåljuspersonal supranera. Punihyning. Predövis. Dötås gigada. Antesorade makrov. Makrojånde diskade. Ninas. Odevis pepobel. Makrossade hyponade. Mäl. Son motint.   ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14,
                            fontFamily: 'Inter'
                          ),
                        ),
                          SizedBox(height: size.height * 0.05),
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
                          "Accept ",
                          style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.02,)
             
                  ],
                  ),
                  
            ),
            
          ),
        ),
      ),
    );
  }
}
