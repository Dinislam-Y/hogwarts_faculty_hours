// Flutter imports:
import 'package:flutter/material.dart';

class PointProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  incrementCounter(int value) {
    _counter += value;
    if (_counter > 100) {
      _counter = 100;
    }
    if (_counter < -100) {
      _counter = -100;
    }
    notifyListeners();
  }

  clearItem() {
    _counter = 0;
    notifyListeners();
  }
}
