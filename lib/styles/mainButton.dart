import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/textstyle.dart';

class MainButton extends StatelessWidget {
  final double  width;
  final String label;
  final VoidCallback? onTap;

  const MainButton({
    super.key,
    required this.width,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.MainColor,
        ),
        child: Center(
            child: Text(
          label,
          style: appstyle(20, AppColor.White, FontWeight.normal),
        )),
      ),
    );
  }
}
