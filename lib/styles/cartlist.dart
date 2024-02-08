import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/textstyle.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class Cartlist extends StatefulWidget {
  const Cartlist({super.key});

  @override
  State<Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<Cartlist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: AppColor.yelloish),
        height: MediaQuery.of(context).size.height * 0.09,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: double.infinity,
                child: Image.asset(
                  "asset/fries.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer_(
              wt: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.38,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "French fries",
                    style: appstyle(20, AppColor.Black, FontWeight.w500),
                  ),
                  Spacer_(
                    ht: 2,
                  ),
                  Text(
                    "INR 150",
                    style: appstyle(15, AppColor.LiteBlue, FontWeight.w500),
                  )
                ],
              ),
            ),
            ItemCount(
                color: Colors.white,
                initialValue: 1,
                minValue: 1,
                maxValue: 5,
                onChanged: (value) {},
                decimalPlaces: 0),
          ],
        ),
      ),
    );
  }
}
