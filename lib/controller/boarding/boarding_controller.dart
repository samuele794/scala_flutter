import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:scala_flutter/model/user/user_type.dart';
import 'package:scala_flutter/repository/places_repository.dart';

import '../../model/maps/places/places_result.dart';

part 'boarding_controller.freezed.dart';

class BoardingController with ChangeNotifier {
  final Logger _logger = Logger();

  BoardingUi ui = BoardingUi();
  PlaceSearchUi placeSearchUi = PlaceSearchUi();

  PlacesRepository _placesRepository;

  Timer? _debounce;

  BoardingController(this._placesRepository);

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
    final firstNext = ui.userType != UserType.NONE &&
        ui.name.isNotEmpty &&
        ui.surname.isNotEmpty;

    ui = ui.copyWith(firstNext: firstNext);
    notifyListeners();
  }

  void searchPlace(BuildContext context, String query) async {
    if (query == placeSearchUi.placeSearchQuery) {
      return;
    }

    placeSearchUi = placeSearchUi.copyWith(placeSearchQuery: query);

    if (query.isEmpty) {
      _debounce?.cancel();
      resetSearchPlaces();
      return;
    }

    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      try {
        final placeResult = await _placesRepository.getPlaces(
            AppLocalizations.of(context).localeName, query);
        _logger.i("Result places");
        _logger.i(placeResult);
        placeSearchUi = placeSearchUi.copyWith(placeSearched: placeResult);
        notifyListeners();
      } catch (ex) {
        _logger.e("Error Search place", ex);
        clearSearchPlaces();
      }
    });
  }

  void selectPlace(PlacesResult placeSelected) {
    placeSearchUi = placeSearchUi.copyWith(placeSelected: placeSelected);
    notifyListeners();
  }

  void clearSearchPlaces() {
    placeSearchUi = placeSearchUi.copyWith(placeSearched: []);
    notifyListeners();
  }

  void resetSearchPlaces() {
    placeSearchUi = PlaceSearchUi();
    notifyListeners();
  }

  void saveTrainerPlace() {
    final placeSelected = placeSearchUi.placeSelected;
    if (placeSelected == null) {
      return;
    }
    final newPlaces = ui.trainerPlaces.toList();
    newPlaces.add(placeSelected);
    ui = ui.copyWith(trainerPlaces: newPlaces);
    placeSearchUi = PlaceSearchUi();
    notifyListeners();
  }
}

@freezed
class PlaceSearchUi with _$PlaceSearchUi {
  factory PlaceSearchUi({
    @Default("") placeSearchQuery,
    @Default([]) List<PlacesResult> placeSearched,
    PlacesResult? placeSelected,
  }) = _PlaceSearchUi;
}

@freezed
class BoardingUi with _$BoardingUi {
  factory BoardingUi({
    @Default("") String name,
    @Default("") String surname,
    @Default(UserType.NONE) UserType userType,
    @Default(false) bool firstNext,
    @Default("0") String height,
    @Default([]) List<PlacesResult> trainerPlaces,
  }) = _BoardingUi;
}
