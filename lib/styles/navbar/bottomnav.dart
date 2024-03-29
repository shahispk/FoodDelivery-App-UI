import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    this.onTap,
    this.icon,
  });
  final void Function()? onTap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 36,
          width: 36,
          child: Icon(
            icon,
            color: AppColor.Black ,
            size: 35,
          ),
        ));
  }
}
