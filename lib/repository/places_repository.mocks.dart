// Mocks generated by Mockito 5.2.0 from annotations
// in scala_flutter/repository/places_repository.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:scala_flutter/model/maps/places/places_result.dart' as _i5;
import 'package:scala_flutter/repository/api/places_client.dart' as _i2;
import 'package:scala_flutter/repository/places_repository.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakePlacesClient_0 extends _i1.Fake implements _i2.PlacesClient {}

/// A class which mocks [PlacesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPlacesRepository extends _i1.Mock implements _i3.PlacesRepository {
  MockPlacesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get apiKey =>
      (super.noSuchMethod(Invocation.getter(#apiKey), returnValue: '')
          as String);

  @override
  set apiKey(String? _apiKey) =>
      super.noSuchMethod(Invocation.setter(#apiKey, _apiKey),
          returnValueForMissingStub: null);

  @override
  _i2.PlacesClient get placesClient =>
      (super.noSuchMethod(Invocation.getter(#placesClient),
          returnValue: _FakePlacesClient_0()) as _i2.PlacesClient);

  @override
  set placesClient(_i2.PlacesClient? _placesClient) =>
      super.noSuchMethod(Invocation.setter(#placesClient, _placesClient),
          returnValueForMissingStub: null);

  @override
  _i4.Future<List<_i5.PlacesResult>> getPlaces(
          String? language, String? query) =>
      (super.noSuchMethod(Invocation.method(#getPlaces, [language, query]),
              returnValue:
                  Future<List<_i5.PlacesResult>>.value(<_i5.PlacesResult>[]))
          as _i4.Future<List<_i5.PlacesResult>>);
}