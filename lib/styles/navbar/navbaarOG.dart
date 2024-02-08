import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:uitest/cart.dart';
import 'package:uitest/homePage.dart';
import 'package:uitest/styles/fav.dart';
import 'package:uitest/styles/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  
  List pages = [ HomePage(), Cartpage(), Favorite(), Profile()];
  int _currentIndex = 0;
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Ionicons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
          ]),
      body: pages[_currentIndex],
    );
  }
}
