import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;

  CalculatorBrain({required this.weight, required this.height});

  double _bmi = 0;

  String calculatorBMI() {
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

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Bạn đang rất là béo, giảm cân đi :)';
    } else if (_bmi > 18.5) {
      return 'Cân nặng bình thường, good';
    } else {
      return 'Bạn rất gầy :) tăng cân đi';
    }
  }
}
