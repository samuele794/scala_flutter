import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';

class BodyDataPage extends StatelessWidget {
  const BodyDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                context.read<BoardingController>().setHeight(value);
              },
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: AppLocalizations.of(context).height,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .pushNamed(RoutingConstants.boardingTrainerMapRoute.name);
                },
                child: Text(AppLocalizations.of(context).next)),
          ],
        ),
      ),
    );
  }
}
