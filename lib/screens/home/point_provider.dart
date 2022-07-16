// Flutter imports:
import 'package:flutter/material.dart';

class PointProvider extends ChangeNotifier {
  final Map<Color, int> _counterMap = {
    Colors.green: 0,
    Colors.blue: 0,
    Colors.red: 0,
    Colors.yellow: 0,
  };

  Map<Color, int> get counterMap => _counterMap;

  incrementCounter(int value, Color color) {
    int mapValue = _counterMap[color]!;

    _counterMap[color] = (mapValue + value);

    if (_counterMap[color]! > 100) {
      _counterMap[color] = 100;
    }
    if (_counterMap[color]! < -100) {
      _counterMap[color] = -100;
    }
    notifyListeners();
  }

  clearItem(Color color) {
    _counterMap[color] = 0;

    notifyListeners();
  }
}
