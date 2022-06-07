import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrainerMapPage extends StatelessWidget {
  const TrainerMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Expanded(
          child: GoogleMap(
            initialCameraPosition: CameraPosition(target: LatLng(0.0, 0.0)),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: MaterialButton(
            onPressed: () {},
            child: Text("Next"),
          ),
        )
      ],
    );
  }
}
