import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scala_flutter/model/user/user_type.dart';

part 'boarding_controller.freezed.dart';

class BoardingController with ChangeNotifier {
  BoardingUi ui = BoardingUi();
  var firstNext = false;

  // PlacesRepository placesRepository;

  // List<PlacesResult> placeSearched = <PlacesResult>[];

  // BoardingController(this.placesRepository);

  void setUserType(UserType userType) {
    ui = ui.copyWith(userType: userType);
    _checkFirstOnBoardNext();
    notifyListeners();
  }

  void setName(String name) {
    ui = ui.copyWith(name: name);
    _checkFirstOnBoardNext();
    notifyListeners();
  }

  void setSurname(String surname) {
    ui = ui.copyWith(surname: surname);
    _checkFirstOnBoardNext();
    notifyListeners();
  }

  void setHeight(String height) {
    ui = ui.copyWith(height: height);
    notifyListeners();
  }

  void _checkFirstOnBoardNext() {
    firstNext = ui.userType != UserType.NONE &&
        ui.name.isNotEmpty &&
        ui.surname.isNotEmpty;
    notifyListeners();
  }

  Future<void> searchPlace(String query) async {}
}

@freezed
class BoardingUi with _$BoardingUi {
  factory BoardingUi({
    @Default("") String name,
    @Default("") String surname,
    @Default(UserType.NONE) UserType userType,
    @Default(false) bool firstNext,
    @Default("0") String height,
  }) = _BoardingUi;
}
