// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        activeColor: Colors.brown[1000],
        tabActiveBorder: Border.all(color: Colors.white),
        //tabBackgroundColor: Colors.brown.shade400,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 70,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.mobile_screen_share,
            text: 'Phones',
          ),
          GButton(
            icon: Icons.food_bank,
            text: 'Food',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Clothes',
          ),

          GButton(
            icon: Icons.category,
            text: 'Bags',
          ),
          GButton(
            icon: Icons.book,
            text: 'Books',
          ),
        ],
      ),
    );
  }
}
