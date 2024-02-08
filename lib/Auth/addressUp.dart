import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/divider.dart';
import 'package:uitest/styles/formWidget.dart';
import 'package:uitest/styles/mainButton.dart';
import 'package:uitest/styles/textstyle.dart';

class Address_page extends StatefulWidget {
  const Address_page({super.key});

  @override
  State<Address_page> createState() => _Address_pageState();
}

class _Address_pageState extends State<Address_page> {
  var _value = 1;
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
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
                      "Address",
                      style: appstyle(30, AppColor.Black, FontWeight.w600),
                    ),
                    Text(
                      "Make sure it's valid",
                      style: appstyle(16, AppColor.LiteBlue, FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Spacer_(
              ht: 30,
            ),
            Text(
              "Phone No.",
              style: appstyle(20, AppColor.Black, FontWeight.w500),
            ),
            Spacer_(
              ht: 10,
            ),
            FormWidget(
              labelText: "Enter your Phone number",
              inputType: TextInputType.phone,
            ),
            Spacer_(
              ht: 20,
            ),
            Text(
              "Address",
              style: appstyle(20, AppColor.Black, FontWeight.w500),
            ),
            Spacer_(
              ht: 10,
            ),
            FormWidget(
              labelText: "Enter your address",
              inputType: TextInputType.emailAddress,
            ),
            Spacer_(
              ht: 20,
            ),
            Text(
              "House No.",
              style: appstyle(20, AppColor.Black, FontWeight.w500),
            ),
            Spacer_(
              ht: 10,
            ),
            FormWidget(
              labelText: "Type your house number",
              inputType: TextInputType.number,
            ),
            Spacer_(
              ht: 20,
            ),
            Text(
              "City",
              style: appstyle(20, AppColor.Black, FontWeight.w500),
            ),
            Spacer_(
              ht: 10,
            ),

            ///start
            DropdownButtonFormField(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColor.LiteBlue),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    hintText: "fxgf",
                    labelText: "Select Your City",
                    fillColor: Colors.white,
                    labelStyle:
                        appstyle(16, AppColor.LiteBlue, FontWeight.w400)),
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("Malppuram"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Perinthalmanna"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("Kottakal"),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text("Manjeri"),
                    value: 4,
                  ),
                ],
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue as int;
                  });
                }),

            // FormWidget(
            //   labelText: "Select your City",
            //   inputType: TextInputType.number,
            // ),
            Spacer_(
              ht: 30,
            ),
            MainButton(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              width: double.infinity, label: "Sign Up Now"),
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
                      Navigator.pushNamed(context, '/login');
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
