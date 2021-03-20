import 'package:bmi_calculator/widget/constant.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.lable});
  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          lable,
          style: lableTextStyle,
        ),
      ],
    );
  }
}
