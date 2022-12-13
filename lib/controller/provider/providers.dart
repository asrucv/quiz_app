import 'package:flutter/material.dart';

import '../utilities/list.dart';

class FirstProvider with ChangeNotifier {
  bool buttonA = false;

  bool buttonB = false;

  bool buttonC = false;
  bool buttonD = false;

  int questionintex = 0;
  int answerintex = 0;
  int questionNum = 5;
  int mark = 0;
  int buttonintex = 0;

  void optionA() {
    buttonintex = 1;
    buttonA = true;
    buttonB = false;
    buttonC = false;
    buttonD = false;
    notifyListeners();
  }

  void optionB() {
    buttonintex = 2;
    buttonA = false;
    buttonB = true;
    buttonC = false;
    buttonD = false;
    notifyListeners();
  }

  void optionC() {
    buttonintex = 3;
    buttonA = false;
    buttonB = false;
    buttonC = true;
    buttonD = false;
    notifyListeners();
  }

  void optionD() {
    buttonintex = 4;
    buttonA = false;
    buttonB = false;
    buttonC = false;
    buttonD = true;
    notifyListeners();
  }

  void markIncriment() {
    if (correctAnswers[questionintex] == buttonintex - 1) {
      mark = mark + 1;
    }
    notifyListeners();
  }

  void allButton() {
    buttonA = false;
    buttonB = false;
    buttonC = false;
    buttonD = false;
    notifyListeners();
  }
}
