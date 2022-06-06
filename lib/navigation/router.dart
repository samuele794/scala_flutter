import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';
import 'package:scala_flutter/controller/login/login_controller.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';
import 'package:scala_flutter/view/screen/boarding/body_data_page.dart';
import 'package:scala_flutter/view/screen/boarding/personal_data_page.dart';

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
          builder: (context, state) => Provider(
            create: (_) => LoginController(),
            child: LoginPage(),
          ),
        ),
        GoRoute(
          path: RoutingConstants.boardingRoute.path,
          name: RoutingConstants.boardingRoute.name,
          builder: (context, state) =>
              ChangeNotifierProvider<BoardingController>(
            create: (context) => BoardingController(),
            child: PersonalDataPage(),
          ),
          routes: [
            GoRoute(
              path: RoutingConstants.boardingBodyRoute.path,
              name: RoutingConstants.boardingBodyRoute.name,
              builder: (context, state) => ChangeNotifierProvider.value(
                value: state.extra as BoardingController,
                child: BodyDataPage(),
              ),
            )
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
