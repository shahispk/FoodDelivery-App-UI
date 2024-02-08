import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/textstyle.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Product_card extends StatefulWidget {
  const Product_card({super.key});

  @override
  State<Product_card> createState() => _Product_cardState();
}

class _Product_cardState extends State<Product_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.56,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: AppColor.yelloish,
                spreadRadius: 1,
                blurRadius: 0.6,
                offset: Offset(1, 1))
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                child: Image.asset(
                  "asset/biriyani.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Karachi Biriyani",
                      style: appstyle(20, AppColor.Black, FontWeight.w500),
                    ),
                    Spacer_(
                      ht: 4,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                            itemCount: 5,
                            minRating: 1,
                            maxRating: 5,
                            direction: Axis.horizontal,
                            itemSize: 22,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: AppColor.MainColor,
                                ),
                            onRatingUpdate: (rating) {}),
                        Spacer_(
                          wt: 10,
                        ),
                        Text(
                          "4.5",
                          style: appstyle(
                              16.5, AppColor.LiteBlue, FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
