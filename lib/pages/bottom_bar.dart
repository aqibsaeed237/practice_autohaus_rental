import 'package:flutter/material.dart';
import 'package:untitledapp/utilis/constants.dart';

class BottonBar extends StatelessWidget {
  const BottonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(size: 30),
          unselectedIconTheme: const IconThemeData(size: 24),
          backgroundColor: AppColors.primaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 30,
        
          type: BottomNavigationBarType.fixed,

        ),
      ),
    );
  }
}
