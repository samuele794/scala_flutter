import 'package:flutter/material.dart';
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
            TextField(
              key: const Key("nameField"),
              onChanged: (value) {
                context.read<BoardingController>().setName(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
            ),
            TextField(
              key: const Key("surnameField"),
              onChanged: (value) {
                context.read<BoardingController>().setSurname(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Surname',
              ),
            ),
            DropdownButton<UserType>(
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
            ElevatedButton(
              key: const Key("nextBtn"),
              onPressed: nextEnable
                  ? () {
                      context
                          .pushNamed(RoutingConstants.boardingBodyRoute.name);
                    }
                  : null,
              child: const Text("Next"),
            )
          ],
        ),
      ),
    );
  }
}
