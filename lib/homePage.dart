import 'package:flutter/material.dart';

import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/navbar/navBar.dart';
import 'package:uitest/styles/productList.dart';
import 'package:uitest/styles/productcard.dart';
import 'package:uitest/styles/textstyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(vsync: this, length: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottomnavbar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("FoodMart",
                        //  selectionColor: AppColor.Black,
                        style: appstyle(30, AppColor.Black, FontWeight.w500)),
                    Text(
                      "Let's get some foods",
                      style: appstyle(18, AppColor.LiteBlue, FontWeight.normal),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(
                        MediaQuery.of(context).size.height * 0.038),
                    child: Image.asset(
                      "asset/profile.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            Spacer_(
              ht: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detail');
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.305,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Product_card();
                    }),
              ),
            ),
            Spacer_(
              ht: 30,
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
                tabs: [
                  Tab(
                    text: "New Taste",
                  ),
                  Tab(
                    text: "Popular",
                  ),
                  Tab(
                    text: "Recommended",
                  )
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return ProductList();
                    })),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return ProductList();
                    })),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return ProductList();
                    }))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
