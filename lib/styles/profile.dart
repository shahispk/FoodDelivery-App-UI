import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:uitest/styles/Options.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/textstyle.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(vsync: this, length: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  children: [
                    DottedBorder(
                      color: AppColor.LiteBlue,
                      borderType: BorderType.Circle,
                      strokeWidth: 1,
                      dashPattern: [7, 3],
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("asset/profile.jpg"),
                        radius: 50,
                      ),
                    ),
                    Spacer_(
                      ht: 20,
                    ),
                    Text(
                      "Muhammed Shahis pk",
                      style: appstyle(20, AppColor.Black, FontWeight.w500),
                    ),
                    Text(
                      "Shahispk910@gmail.com",
                      style: appstyle(15, AppColor.LiteBlue, FontWeight.w400),
                    )
                  ],
                ),
              ),
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
                    text: "Account",
                  ),
                  Tab(
                    text: "About Us",
                  ),
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                Column(
                  children: [
                    Options(
                      text: 'Edit Profile',
                    ),
                    Options(text: 'Home Address'),
                    Options(text: 'Security'),
                    Options(text: 'Payments')
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                      "The About Us page of your website is an essential source of information for all who want to know more about your business.ata"),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
