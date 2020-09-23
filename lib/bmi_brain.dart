import 'dart:math';

class BMIBrain {
  BMIBrain({this.height, this.weight});

  final height;
  final weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getCategory() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getText() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight.\n Try to exercise more.';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight.\n Good job!';
    else
      return 'You have a lower than normal body weight.\n You can eat a bit more.';
  }
}
