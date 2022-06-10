import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:scala_flutter/model/maps/places/places_response.dart';

part 'places_client.g.dart';

@RestApi(baseUrl: "https://maps.googleapis.com")
abstract class PlacesClient {
  factory PlacesClient(Dio dio, {String baseUrl}) = _PlacesClient;

  @GET("/maps/api/place/textsearch/json")
  Future<PlacesResponse> getPlaces(
    @Query("key") String apiKey,
    @Query("query") String query,
    @Query("language") String language,
  );
}
