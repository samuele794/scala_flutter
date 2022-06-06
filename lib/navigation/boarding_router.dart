

import 'package:scala_flutter/navigation/routing_constants.dart';
import 'package:go_router/go_router.dart';
import 'package:scala_flutter/navigation/router.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';

import '../view/screen/boarding/body_data_page.dart';
import '../view/screen/boarding/personal_data_page.dart';

class BoardingRouter extends Router {
  late GoRouter router;

  BoardingRouter(){
    router = GoRouter(
      routes: composeAppRoutes(),
      initialLocation: RoutingConstants.boardingPersonalRoute.path,
    );
  }

  @override
  List<GoRoute> composeAppRoutes()  => [
    GoRoute(
      path: RoutingConstants.boardingPersonalRoute.path,
      name: RoutingConstants.boardingPersonalRoute.name,
      builder: (context, state) =>  PersonalDataPage(),
    ),
    GoRoute(
      path: RoutingConstants.boardingBodyRoute.path,
      name: RoutingConstants.boardingBodyRoute.name,
      builder: (context, state) => BodyDataPage(),
    )
  ];




}