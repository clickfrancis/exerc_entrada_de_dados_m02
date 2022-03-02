import 'package:flutter/widgets.dart';

class ControllerCalculator extends ChangeNotifier {
  double firstNumber = 0;
  double secondNumber = 0;
  double total = 0;

  void somar(double firstNumber, double secondNumber) {
    total = firstNumber + secondNumber;
    notifyListeners();
  }

  void limpar() {
    total = 0;
    firstNumber = 0;
    secondNumber = 0;
  }
}
