// 'You have higher than normal body weight. Try to exercise more. '
// 'You have normal body weight. Good job!'
// 'You have lower than normal body weight. You can eat a bit smore.'
import 'dart:math';

import 'package:flutter/cupertino.dart';

class ClculatorBrain {
  ClculatorBrain({@required this.height, @required this.weight});
  final int weight;
  final int height;
  double _bmi;
  String clculateBMINumber() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterPritation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more. ';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight. Good job!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit smore.';
    }
  }
}
