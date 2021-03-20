import 'package:bmi_calculator/pages/bmiBrain.dart';
import 'package:bmi_calculator/pages/result.dart';
import 'package:bmi_calculator/widget/bottomButton.dart';
import 'package:bmi_calculator/widget/constant.dart';
import 'package:bmi_calculator/widget/iconContent.dart';
import 'package:bmi_calculator/widget/reUsableCard.dart';
import 'package:bmi_calculator/widget/roundIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    colour: selectedGender == Gender.Male
                        ? activeCardColor
                        : unactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    colour: selectedGender == Gender.Female
                        ? activeCardColor
                        : unactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      lable: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: lableTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: lableTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFE83D66),
                      overlayColor: Color(0x29E83D66),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                    ),
                    child: Slider(
                      max: 220,
                      min: 120,
                      value: height.toDouble(),
                      onChanged: (double anyvalue) {
                        setState(() {
                          height = anyvalue.round();
                        });
                        print(anyvalue);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: lableTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RonudIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RonudIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: lableTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RonudIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RonudIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            lable: 'CALCULATE',
            onTap: () {
              ClculatorBrain clc =
                  ClculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BMIResult(
                    bmiResultNumber: clc.clculateBMINumber(),
                    resultText: clc.getResult(),
                    interPritation: clc.getInterPritation(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
