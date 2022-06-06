import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/login/login_controller.dart';
import 'package:scala_flutter/di.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () {
                context.read<LoginController>().loginWithGoogle();
              },
              child: const Text("Login Google"),
            ),
            MaterialButton(
              onPressed: () async {
                var result =
                    await context.read<LoginController>().loginWithCredential();
                if (result) {
                  Future.delayed(Duration.zero, () {
                    context.push(RoutingConstants.boardingRoute.path);
                  });
                }
              },
              child: const Text("Login test"),
            ),
          ],
        ),
      ),
    );
  }
}
