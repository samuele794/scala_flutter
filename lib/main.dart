import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/di.dart';
import 'package:scala_flutter/navigation/boarding_router.dart';
import 'controller/boarding/boarding_controller.dart';
import 'firebase_options.dart';
import 'navigation/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDi();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider<RouterImpl>(create: (_) => RouterImpl()),
    ],
      builder:(context, child) {
        final RouterImpl goRouter = context.read<RouterImpl>();

        return MaterialApp.router(

          routeInformationParser: goRouter.router.routeInformationParser,
          routerDelegate: goRouter.router.routerDelegate,
          title: 'Flutter Template',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        );
      },
    
    );
  }
}

