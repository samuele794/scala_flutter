
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';
import 'package:scala_flutter/controller/login/login_controller.dart';

import 'navigation/router.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDi() async {

  // getIt.registerSingleton(RouterImpl());

  getIt.registerFactory(() => GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  ));
}
