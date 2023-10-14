import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:untitledapp/pages/home_page.dart';
import 'package:untitledapp/utilis/constants.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _sliderValues = const RangeValues(1000, 1500);
  String? selectedCar; // Variable to store the selected car value

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'Filter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Text(
                          'clear Filter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.06),
                    const Text(
                      'Select Car make',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 72,
                            width: 83,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: const Color(0xFFA87B5D),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset('assets/images/ab.png'),
                          ),
                          Container(
                            height: 72,
                            width: 83,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: const Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset('assets/images/bc.png'),
                          ),
                          Container(
                            height: 72,
                            width: 83,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset('assets/images/cd.png'),
                          ),
                          Container(
                            height: 72,
                            width: 83,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: const Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset('assets/images/de.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Container(
                      height: 0.7,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                    SizedBox(height: size.height * 0.06),
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Price   ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          const TextSpan(
                            text: 'from RM',
                            style: TextStyle(
                              color: Color(0xFFA87B5D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' ${_sliderValues.start.round()} to ${_sliderValues.end.round()} ',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RangeSlider(
                      values: _sliderValues,
                      onChanged: (newValues) {
                        setState(() {
                          _sliderValues = newValues;
                        });
                      },
                      min: 1000,
                      max: 15000,
                      activeColor: Colors.brown,
                      inactiveColor:
                          AppColors.white, // Set the focus color to brown
                    ),
                    SizedBox(height: size.height * 0.06),
                    Container(
                      height: 0.7,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                    SizedBox(height: size.height * 0.04),
                    const Text(
                      'Select car type',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'PoppinsRegular',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: size.height * 0.014),
                    SizedBox(
                      height: size.height * 0.06,
                      width: size.width,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(
                            left: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                const BorderSide(color: Color(0xFF8D8D8D)),
                          ),
                        ),
                        hint: const Text(
                            'Select EV Car'), // Hint text when nothing is selected
                        value: selectedCar, // Set the selected value

                        items: [
                          'BMW',
                          'Ford',
                          'VAGONA',
                          'RHONDA',
                          'TOYOTA',
                          // Add more items as needed
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCar = newValue; // Update the selected value
                          });
                        },
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Car Year',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF5F5F5),
                            fontSize: 20,
                            fontFamily: 'PoppinsRegular',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Container(
                          height: size.height * 0.04,
                          width: size.width * 0.2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                          ),
                          child: const Center(
                            child: Text(
                              '2022',
                              style: TextStyle(
                                color: Color(0xFFF5F5F5),
                                fontSize: 20,
                                fontFamily: 'PoppinsRegular',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.12),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 283,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              border:
                                  Border.all(color: Colors.brown, width: 2.0),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: const Center(
                              child: Text(
                                "Apply ",
                                style: TextStyle(
                                  fontFamily: 'PoppinsRegular',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

// class CustomImageContainer extends StatelessWidget {
//   final String imageAsset;
//   final Color backgroundColor;

//   const CustomImageContainer({super.key,
//     required this.imageAsset,
//     required this.backgroundColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 81,
//       height: 73,
//       margin: const EdgeInsets.all(4),
//       // Adjust the margin as needed
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: backgroundColor, // Set the background color here
//       ),
//       child: SvgPicture.asset(imageAsset)
      
       
//       );
    
//   }
// }


