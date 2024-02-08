import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/formWidget.dart';
import 'package:uitest/styles/mainButton.dart';

import 'package:uitest/styles/textstyle.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign In",
                selectionColor: AppColor.Black,
                style: appstyle(30, AppColor.Black, FontWeight.w600)),
            Text(
              "Find your best ever meal",
              style: appstyle(14, AppColor.LiteBlue, FontWeight.normal),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
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
                Navigator.pushNamed(context, '/home');
              },
              width: double.infinity,
              label: 'Sign In',
            ),
            Spacer_(
              ht: 5,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password",
                    style: appstyle(17, AppColor.MainColor, FontWeight.w500),
                  )),
            ),
            Spacer_(
              ht: 20,
            ),
            Center(
              child: Text(
                "OR",
                style: appstyle(20, AppColor.LiteBlue, FontWeight.normal),
              ),
            ),
            Spacer_(
              ht: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create an Account?",
                  style: appstyle(20, AppColor.LiteBlue, FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child: Text(
                      "Sign Up",
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
