import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/login/login_controller.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';
import 'package:scala_flutter/view/screen/boarding/body_data_page.dart';
import 'package:scala_flutter/view/screen/boarding/personal_data_page.dart';
import 'package:scala_flutter/view/screen/boarding/trainer_map_page.dart';

import '../view/screen/login/login_page.dart';

abstract class Router {
  List<GoRoute> composeAppRoutes();
}

class RouterImpl extends Router {
  late GoRouter router;

  RouterImpl() {
    router = GoRouter(
      routes: composeAppRoutes(),
      initialLocation: RoutingConstants.loginRoute.path,
    );
  }

  @override
  List<GoRoute> composeAppRoutes() => [
    GoRoute(
      path: RoutingConstants.loginRoute.path,
          name: RoutingConstants.loginRoute.name,
          pageBuilder: (context, state) => MaterialPage(
              child: Provider(
            create: (_) => LoginController(),
            child: LoginPage(),
          )),
        ),
    GoRoute(
      path: RoutingConstants.boardingRoute.path,
          name: RoutingConstants.boardingRoute.name,
          pageBuilder: (context, state) =>
              MaterialPage(child: PersonalDataPage()),
          routes: [
            GoRoute(
              path: RoutingConstants.boardingBodyRoute.path,
              name: RoutingConstants.boardingBodyRoute.name,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: BodyDataPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        SlideTransition(
                            position: animation.drive(
                              Tween<Offset>(
                                begin: const Offset(1, 0),
                                end: Offset.zero,
                              ).chain(CurveTween(curve: Curves.easeIn)),
                            ),
                            child: child),
              ),
            ),
            GoRoute(
              path: RoutingConstants.boardingTrainerMapRoute.path,
              name: RoutingConstants.boardingTrainerMapRoute.name,
              pageBuilder: (context, state) =>
                  const MaterialPage(child: TrainerMapPage()),
            ),
          ],
    ),
    // GoRoute(
    //   path: RoutingConstants.secondRoute.path,
    //   name: RoutingConstants.secondRoute.name,
    //   builder: (ctx, state) => SecondScreen(
    //       param: state.params[RoutingConstants.paramFoo] ?? ''),
    // ),
    // GoRoute(
    //   path: RoutingConstants.thirdRoute.path,
    //   name: RoutingConstants.thirdRoute.name,
    //   builder: (ctx, state) => ThirdScreen(
    //       queryParam: state.queryParams[RoutingConstants.paramBaz] ?? ''),
    // ),
  ];
}
