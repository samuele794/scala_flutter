import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';

class TrainerPlacesPage extends StatelessWidget {
  const TrainerPlacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.pushNamed(RoutingConstants.boardingTrainerMapRoute.name);
      }),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Text("data");
      }),
    );
  }
}
