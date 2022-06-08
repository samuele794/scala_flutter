import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget baseWidget({required Widget child}) {
  return MaterialApp(
    home: Scaffold(
      body: child,
    ),
  );
}
