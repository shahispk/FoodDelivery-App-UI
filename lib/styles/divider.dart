import 'package:flutter/material.dart';

class Spacer_ extends StatelessWidget {
  final double? ht;
  final double? wt;
  Spacer_({
    super.key,
    this.ht, this.wt,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ht,
      width: wt,
    );
  }
}
