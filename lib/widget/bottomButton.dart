import 'package:bmi_calculator/widget/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.lable, @required this.onTap});
  final Function onTap;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            lable,
            style: bottomButttomTextStyle,
          ),
        ),
        color: bottomContainerColor,
        height: bottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
