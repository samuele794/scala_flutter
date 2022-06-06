import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/navigation/boarding_router.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<BoardingRouter>(
      create: (_) => BoardingRouter(),
      builder: (d, a) {
        var router = d.read<BoardingRouter>();

        return Router(
          routeInformationParser: router.router.routeInformationParser,
          routerDelegate: router.router.routerDelegate,
        );
      },
    );
  }
}
