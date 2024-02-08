import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/formWidget.dart';
import 'package:uitest/styles/mainButton.dart';
import 'package:uitest/styles/textstyle.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({super.key});

  @override
  State<Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    )),
                Spacer_(
                  wt: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign UP",
                      style: appstyle(30, AppColor.Black, FontWeight.w600),
                    ),
                    Text(
                      "Register and eat",
                      style: appstyle(16, AppColor.LiteBlue, FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Spacer_(
              ht: 30,
            ),
            Text(
              "Full Name",
              style: appstyle(20, AppColor.Black, FontWeight.w500),
            ),
            Spacer_(
              ht: 10,
            ),
            FormWidget(
              labelText: "Type your full name",
              inputType: TextInputType.name,
            ),
            Spacer_(
              ht: 20,
            ),
            Text(
              "Email Address",
              style: appstyle(20, AppColor.Black, FontWeight.w500),
            ),
            Spacer_(
              ht: 10,
            ),
            FormWidget(
              controller: _emailController,
              labelText: "Type your email address",
              inputType: TextInputType.emailAddress,
            ),
            Spacer_(
              ht: 20,
            ),
            Text(
              "Password",
              style: appstyle(20, AppColor.Black, FontWeight.w500),
            ),
            Spacer_(
              ht: 10,
            ),
            FormWidget(
              controller: _passwordController,
              labelText: "Type your password",
              inputType: TextInputType.visiblePassword,
            ),
            Spacer_(
              ht: 30,
            ),
            MainButton(
                onTap: () {
                  Navigator.pushNamed(context, '/addressUp');
                },
                width: double.infinity,
                label: "Continue"),
            Spacer_(
              ht: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have an Account?",
                  style: appstyle(20, AppColor.LiteBlue, FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Log In",
                      style: appstyle(20, AppColor.MainColor, FontWeight.w600),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
