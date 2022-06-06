import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';

class BodyDataPage extends StatelessWidget {
  BodyDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value){
              context.read<BoardingController>()
                  .setHeight(value);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Height',
            ),
          )
        ],
      ),
    );
  }
}
