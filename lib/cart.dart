import 'package:flutter/material.dart';
import 'package:uitest/styles/cartlist.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/mainButton.dart';
import 'package:uitest/styles/productList.dart';
import 'package:uitest/styles/textstyle.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Padding(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Cart",
                style: appstyle(30, AppColor.Black, FontWeight.w500),
              ),
              Text(
                "Wait for the best meal",
                style: appstyle(18, AppColor.LiteBlue, FontWeight.normal),
              ),
              Spacer_(
                ht: MediaQuery.of(context).size.height * 0.10,
              ),
              TabBar(
                  controller: _tabController,
                  labelColor: AppColor.Black,
                  unselectedLabelColor: AppColor.LiteBlue,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabAlignment: TabAlignment.start,
                  labelStyle: appstyle(15, AppColor.Black, FontWeight.w600),
                  isScrollable: true,
                  indicatorColor: AppColor.Black,
                  tabs: [Tab(text: "Added items"), Tab(text: "Past orders")]),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  Stack(
                    children: [
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 3,
                          itemBuilder: ((context, index) {
                            return Cartlist();
                          })),
                      Positioned(
                          left: 50,
                          right: 50,
                          bottom: MediaQuery.of(context).size.height * 0.05,
                          child: GestureDetector(
                            onTap: () {},
                            child: MainButton(
                                width: MediaQuery.of(context).size.width * 0.4,
                                label: "Order Now"),
                          ))
                    ],
                  ),
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return ProductList();
                      }))
                ]),
              )
            ],
          ),
        ));
  }
}
