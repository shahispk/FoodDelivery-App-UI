import 'package:flutter/material.dart';
import 'package:uitest/Auth/login.dart';
import 'package:uitest/styles/colors.dart';

class Splash_Screen extends StatefulWidget {
  final Widget? child;
  const Splash_Screen({super.key, this.child});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => Login_page()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColor.MainColor, 
    body: Center(
      child: Image.asset("asset/logo.png"),
    ));
  }
}
