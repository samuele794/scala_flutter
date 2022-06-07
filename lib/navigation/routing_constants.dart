
import 'package:scala_flutter/navigation/route.dart';

class RoutingConstants {
  //region == ROUTES ==
  static const loginRoute = Route(name: 'login_screen', path: '/');

  static const boardingRoute = Route(name: 'boarding', path: '/boarding');

  // static const boardingPersonalRoute =  Route(name: 'boarding_personal', path: 'personal');
  static const boardingBodyRoute = Route(name: 'boarding_body', path: 'body');
  static const boardingTrainerMapRoute =
      Route(name: 'boarding_trainer_map', path: 'boardingTrainerMap');

  //endregion

  //region == NAMED PARAMS ==
  static const paramFoo = 'foo';
  static const paramBaz = 'baz';
  //endregion

}