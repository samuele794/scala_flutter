import 'package:flutter/material.dart';
import 'package:scala_flutter/model/user/user_type.dart';

class BoardingController with ChangeNotifier {
  var name = "";

  var surname = "";

  UserType userType = UserType.NONE;

  var height = "0";

  var firstNext = false;

  void setUserType(UserType userType) {
    this.userType = userType;
    _checkFirstOnBoardNext();
    notifyListeners();
  }

  void setName(String name) {
    this.name = name;
    _checkFirstOnBoardNext();
    notifyListeners();
  }

  void setSurname(String surname) {
    this.surname = surname;
    _checkFirstOnBoardNext();
    notifyListeners();
  }

  void setHeight(String height) {
    this.height = height;
    notifyListeners();
  }

  void _checkFirstOnBoardNext() {
    firstNext = userType != UserType.NONE && name.isNotEmpty && surname.isNotEmpty;
    notifyListeners();
  }
}
