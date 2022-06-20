import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;

  CalculatorBrain({required this.height, required this.weight});

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi! > 18.5) {
      return 'NORMAL';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight, Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have normal body weight, Good job!';
    } else {
      return 'You have a lower normal body weight, you can eat a bit more.';
    }
  }
}
