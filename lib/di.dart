import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scala_flutter/firebase_options.dart';
import 'package:scala_flutter/repository/api/places_client.dart';
import 'package:scala_flutter/repository/places_repository.dart';

GetIt getIt = GetIt.instance;

Future<void> initDi() async {
  // getIt.registerSingleton(RouterImpl());

  if (defaultTargetPlatform == TargetPlatform.android) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }

  getIt.registerSingleton(() => FirebaseFirestore.instance);

  getIt.registerFactory(() => GoogleSignIn(
        scopes: [
          'email',
          'https://www.googleapis.com/auth/contacts.readonly',
        ],
      ));

  getIt.registerSingletonAsync(() => Future(() => PlacesClient(Dio())));

  getIt.registerSingletonAsync(
      () => Future(
            () => PlacesRepository(
                DefaultFirebaseOptions.currentPlatform.apiKey,
                getIt.get<PlacesClient>()),
          ),
      dependsOn: [PlacesClient]);
}
