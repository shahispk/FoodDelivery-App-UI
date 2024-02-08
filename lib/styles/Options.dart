import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/textstyle.dart';

class Options extends StatelessWidget {
  const Options({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: appstyle(15, AppColor.Black, FontWeight.w500),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColor.LiteBlue,
            size: 20,
          )
        ],
      ),
    );
  }
}
