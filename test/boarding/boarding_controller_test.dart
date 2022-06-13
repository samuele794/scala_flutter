import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';
import 'package:scala_flutter/model/user/user_type.dart';
import 'package:scala_flutter/repository/places_repository.mocks.dart';
import 'package:scala_flutter/view/screen/boarding/personal_data_page.dart';

import '../utils/utils.dart';

void main() {
  testWidgets('Widget user name', (WidgetTester tester) async {
    final boardingController = BoardingController(MockPlacesRepository());

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => boardingController,
        child: baseWidget(
          child: const PersonalDataPage(),
        ),
      ),
    );

    await tester.enterText(find.byKey(const Key("nameField")), "Samuele");
    expect(boardingController.ui.name, "Samuele");

    // expect(
    //     tester
    //         .widget<TextField>(find.byKey(const Key("nameField"))),
    //     "Samuele");
  });

  testWidgets('Widget user surname', (WidgetTester tester) async {
    final boardingController = BoardingController(MockPlacesRepository());

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => boardingController,
        child: baseWidget(
          child: const PersonalDataPage(),
        ),
      ),
    );

    await tester.enterText(find.byKey(const Key("surnameField")), "Bruschi");
    expect(boardingController.ui.surname, "Bruschi");
  });

  testWidgets('Widget user role USER', (WidgetTester tester) async {
    final boardingController = BoardingController(MockPlacesRepository());
    const key = Key("roleField");

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => boardingController,
        child: baseWidget(
          child: const PersonalDataPage(),
        ),
      ),
    );

    final dropdown = find.byKey(key);
    await tester.tap(dropdown);
    await tester.pumpAndSettle();

    final userElementDrop = find
        .text(UserType.USER.name)
        .last;
    await tester.tap(userElementDrop);
    await tester.pumpAndSettle();

    expect(boardingController.ui.userType, UserType.USER);
  });

  testWidgets('Widget all filled Next Enabled', (WidgetTester tester) async {
    final boardingController = BoardingController(MockPlacesRepository());
    const key = Key("roleField");

    ElevatedButton getNextBtn() {
      return tester.widget<ElevatedButton>(find.byKey(const Key("nextBtn")));
    }

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => boardingController,
        child: baseWidget(
          child: const PersonalDataPage(),
        ),
      ),
    );

    await tester.enterText(find.byKey(const Key("nameField")), "Samuele");
    await tester.pumpAndSettle();

    expect(getNextBtn().enabled, false);

    await tester.enterText(find.byKey(const Key("surnameField")), "Bruschi");
    await tester.pumpAndSettle();

    expect(getNextBtn().enabled, false);

    final dropdown = find.byKey(key);
    await tester.tap(dropdown);
    await tester.pumpAndSettle();

    final userElementDrop = find.text(UserType.USER.name).last;
    await tester.tap(userElementDrop);
    await tester.pumpAndSettle();

    expect(getNextBtn().enabled, true);
  });
}
