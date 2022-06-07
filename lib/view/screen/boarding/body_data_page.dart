import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';

class BodyDataPage extends StatelessWidget {
  BodyDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              context.read<BoardingController>().setHeight(value);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Height',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                context
                    .pushNamed(RoutingConstants.boardingTrainerMapRoute.name);
              },
              child: Text("Next")),
        ],
      ),
    );
  }
}
