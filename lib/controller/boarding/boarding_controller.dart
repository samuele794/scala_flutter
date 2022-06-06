import 'package:firebase_auth/firebase_auth.dart';
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
    notifyListeners();
    _checkFirstOnBoardNext();
  }

  void setName(String name){
    this.name = name;
    notifyListeners();
    _checkFirstOnBoardNext();
  }

  void setSurname(String name){
    this.name = name;
    notifyListeners();
    _checkFirstOnBoardNext();
  }

  void setHeight(String height){
    this.height = height;
    notifyListeners();
  }

  void _checkFirstOnBoardNext(){
    firstNext = userType != UserType.NONE && name.isNotEmpty && surname.isNotEmpty;
    notifyListeners();
  }
}
