import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/mainButton.dart';
import 'package:uitest/styles/textstyle.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: MediaQuery.of(context).size.height * 0.629,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "asset/biriyani.jpg",
                fit: BoxFit.fitHeight,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.04,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                    icon: Icon(Ionicons.bag),
                    color: Colors.white,
                  )
                ],
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.32,
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Karachi Biriyani",
                                    style: appstyle(
                                        20, AppColor.Black, FontWeight.w500),
                                  ),
                                  RatingBar.builder(
                                      itemCount: 5,
                                      minRating: 1,
                                      maxRating: 5,
                                      direction: Axis.horizontal,
                                      itemSize: 22,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => const Icon(
                                            Icons.star,
                                            color: AppColor.MainColor,
                                          ),
                                      onRatingUpdate: (rating) {}),
                                ],
                              ),
                              ItemCount(
                                  buttonSizeHeight: 30,
                                  buttonSizeWidth: 40,
                                  color: AppColor.MainColor,
                                  initialValue: 4,
                                  minValue: 1,
                                  maxValue: 5,
                                  onChanged: (value) {},
                                  decimalPlaces: 0),
                            ],
                          ),
                          Spacer_(
                            ht: 20,
                          ),
                          Text(
                            "Fresh herbs, saffron, and basmati rice give it a sweet-floral aroma that hits the nose before you taste it. Whole garam masala, fried onions, and marinated meat provide warmth and subtle heat to the dish. Overall, it tastes like a savory, spiced rice pilaf.",
                            style: appstyle(
                                16, AppColor.LiteBlue, FontWeight.w400),
                          ),
                          Spacer_(
                            ht: 20,
                          ),
                          Text(
                            "Ingredients:",
                            style:
                                appstyle(20, AppColor.Black, FontWeight.w500),
                          ),
                          Text(
                            "Vegetable oil,Rice, Water,Vegetables,Spices,etc",
                            style: appstyle(
                                16, AppColor.LiteBlue, FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Price",
                                style: appstyle(
                                    15, AppColor.LiteBlue, FontWeight.w600),
                              ),
                              Text(
                                "INR 50",
                                style: appstyle(
                                    20, AppColor.Black, FontWeight.w600),
                              )
                            ],
                          ),
                          MainButton(
                              width: MediaQuery.of(context).size.width * 0.4,
                              label: "Add to Cart")
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
