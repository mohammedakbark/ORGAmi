import 'package:flutter/material.dart';

class Controller with ChangeNotifier {
  bool ischeckbox1Enabled = false;
  bool ischeckbox2Enabled = false;
  bool ischeckbox3Enabled = false;
  bool ischeckbox4Enabled = false;
  bool termsAndCondition = false;
  bool isSecure = true;

  ischeckboxClicked(value, index) {
    if (index == 0) {
      ischeckbox1Enabled = value;
    } else if (index == 1) {
      ischeckbox2Enabled = value;
    } else if (index == 2) {
      ischeckbox3Enabled = value;
    } else if (index == 3) {
      ischeckbox4Enabled = value;
    } else if (index == 4) {
      termsAndCondition = value;
    }

    notifyListeners();
  }

  isSecuree() {
    isSecure = !isSecure;
    notifyListeners();
  }
}
