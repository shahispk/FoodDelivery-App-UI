import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/textstyle.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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
                  "asset/burger.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer_(
              wt: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Burger",
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
            RatingBar.builder(
                itemCount: 5,
                direction: Axis.horizontal,
                minRating: 0.5,
                maxRating: 5,
                itemSize: 18,
                itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: AppColor.MainColor,
                    ),
                onRatingUpdate: (rating) {}),
            Spacer_(
              wt: 10,
            ),
            Text(
              "4.1",
              style: appstyle(15, AppColor.LiteBlue, FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
