import 'package:flutter/material.dart';
import 'package:uitest/styles/colors.dart';
import 'package:uitest/styles/textstyle.dart';

class FormWidget extends StatefulWidget {
  final TextEditingController? controller;

  final String? hintText;
  final String? labelText;

  final TextInputType? inputType;

  const FormWidget(
      {super.key,
      this.controller,
      this.hintText,
      this.labelText,
      this.inputType});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.White,
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        controller: widget.controller,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.LiteBlue),
                borderRadius: BorderRadius.circular(10)),
            filled: true,
            labelText: widget.labelText,
            hintText: widget.hintText,
            fillColor: Colors.white,
            labelStyle: appstyle(16, AppColor.LiteBlue, FontWeight.w400)),
      ),
    );
  }
}
