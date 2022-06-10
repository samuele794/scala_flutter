import 'package:scala_flutter/model/maps/places/places_result.dart';

import 'api/places_client.dart';

class PlacesRepository {
  // String appLanguage;
  // String apiKey;
  PlacesClient placesClient;

  PlacesRepository(
    this.placesClient,
  );

  Future<List<PlacesResult>> getPlaces(String language, String query) async {
    var placeResult = await placesClient.getPlaces("apiKey", query, language);
    return placeResult.placesResults;
  }
}