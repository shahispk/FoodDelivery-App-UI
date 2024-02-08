import 'package:flutter/material.dart';
import 'package:uitest/Auth/Signup.dart';
import 'package:uitest/Auth/addressUp.dart';
import 'package:uitest/Auth/login.dart';
import 'package:uitest/cart.dart';
import 'package:uitest/detailpage.dart';
import 'package:uitest/homePage.dart';
import 'package:uitest/splash_screen.dart';
import 'package:uitest/styles/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      routes: {
         '/': (context) => Splash_Screen(
      //     // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          
         ),
         '/login': (context) => Login_page(),
         '/signUp': (context) => Signup_page(),
         '/addressUp': (context) => Address_page(),
         '/home': (context) => HomePage(),
         '/cart':(context)=> Cartpage(),
         '/detail':(context)=> Detailpage(),
         '/profile':(context)=> Profile()
       },
    );
  }
}
