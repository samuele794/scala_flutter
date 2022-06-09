import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/model/user/user_type.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';

import '../../../controller/boarding/boarding_controller.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nextEnable = context.watch<BoardingController>().firstNext;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: TextField(
                key: const Key("nameField"),
                onChanged: (value) {
                  context.read<BoardingController>().setName(value);
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: AppLocalizations.of(context).name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                key: const Key("surnameField"),
                onChanged: (value) {
                  context.read<BoardingController>().setSurname(value);
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: AppLocalizations.of(context).surname,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: DropdownButton<UserType>(
                key: const Key("roleField"),
                items: UserType.values.map(
                  (e) {
                    return DropdownMenuItem<UserType>(
                      value: e,
                      child: Text(e.name),
                    );
                  },
                ).toList(),
                onChanged: (select) {
                  context.read<BoardingController>().setUserType(select!);
                },
                icon: const Icon(Icons.arrow_downward),
                value: context.watch<BoardingController>().userType,
                hint: Text(context.watch<BoardingController>().userType.name),
              ),
            ),
            ElevatedButton(
              key: const Key("nextBtn"),
              onPressed: nextEnable
                  ? () {
                      switch (context.read<BoardingController>().userType) {
                        case UserType.TRAINER:
                          context.pushNamed(
                              RoutingConstants.boardingTrainerMapRoute.name);
                          break;
                        case UserType.USER:
                          context.pushNamed(
                              RoutingConstants.boardingBodyRoute.name);
                          break;
                        default:
                      }
                    }
                  : null,
              child: Text(AppLocalizations.of(context).next),
            )
          ],
        ),
      ),
    );
  }
}
