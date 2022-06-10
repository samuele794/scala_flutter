import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrainerMapPage extends StatelessWidget {
  const TrainerMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GoogleMap(
          initialCameraPosition: CameraPosition(target: LatLng(0.0, 0.0)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(AppLocalizations.of(context).next),
            ),
          ),
        )
      ],
    );
  }
}
