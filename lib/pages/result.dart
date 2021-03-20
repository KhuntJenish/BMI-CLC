import 'package:bmi_calculator/widget/bottomButton.dart';
import 'package:bmi_calculator/widget/constant.dart';
import 'package:bmi_calculator/widget/reUsableCard.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.bmiResultNumber,
      @required this.resultText,
      @required this.interPritation});
  final String bmiResultNumber;
  final String resultText;
  final String interPritation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator '),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: resultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResultNumber,
                    style: resultBmiTextStyle,
                  ),
                  Text(
                    interPritation,
                    textAlign: TextAlign.center,
                    style: resultBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            lable: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
