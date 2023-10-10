import 'package:flutter/material.dart';
import 'package:untitledapp/pages/home_page.dart';
import 'package:untitledapp/utilis/constants.dart';

import 'enum.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    //const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      height: 80,
      width: 360,
      padding: const EdgeInsets.all(14),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.home_outlined,
                    color: Colors.brown, size: 30),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage())),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble, color: Colors.white, size: 30),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.calendar_month_outlined,
                color: Colors.white, size: 30),
            onPressed: () {},
          ),
          IconButton(
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 30,
              ),

              // ),
              onPressed: () {}),
        ],
      )),
    );
  }
}
