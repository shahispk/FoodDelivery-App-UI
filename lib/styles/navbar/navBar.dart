import 'package:flutter/material.dart';
import 'package:uitest/styles/navbar/bottomnav.dart';
import 'package:ionicons/ionicons.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      // color: AppColor.LiteBlue,
      padding: EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      // decoration: BoxDecoration(
      //   color: Colors.black,
      //   borderRadius: BorderRadius.circular(16),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNav(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Ionicons.home_outline),
          BottomNav(
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
              icon: Ionicons.bag_outline),
          BottomNav(onTap: () {}, icon: Ionicons.heart_outline),
          BottomNav(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              icon: Ionicons.person_outline),
        ],
      ),
    ));
  }
}
