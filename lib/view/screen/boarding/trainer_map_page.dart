import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';
import 'package:scala_flutter/model/maps/places/places_result.dart';

class TrainerMapPage extends StatefulWidget {
  const TrainerMapPage({Key? key}) : super(key: key);

  @override
  State<TrainerMapPage> createState() => _TrainerMapPageState();
}

class _TrainerMapPageState extends State<TrainerMapPage> {
  @override
  void deactivate() {
    context.read<BoardingController>().resetSearchPlaces();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    var placeSearchUi = context.watch<BoardingController>().placeSearchUi;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              _searchPlace(
                searchChanged: (value) {
                  context
                      .read<BoardingController>()
                      .searchPlace(context, value);
                },
                placeList: placeSearchUi.placeSearched,
                onPlaceSelected: (PlacesResult value) {
                  context.read<BoardingController>().selectPlace(value);
                },
                placesResultSelected: placeSearchUi.placeSelected,
              ),
              _map(),
            ],
          ),
          placeSearchUi.placeSelected != null
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(AppLocalizations.of(context).next),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _searchPlace({
    ValueChanged<String>? searchChanged,
    required ValueSetter<PlacesResult> onPlaceSelected,
    required List<PlacesResult> placeList,
    PlacesResult? placesResultSelected,
  }) {
    return Expanded(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: searchChanged,
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: placeList.length,
          itemBuilder: (context, index) {
            final place = placeList[index];
            return MaterialButton(
              onPressed: () {
                onPlaceSelected(place);
              },
              child: Row(
                children: [
                  Expanded(child: Text("${place.name}")),
                  place == placesResultSelected
                      ? const Icon(Icons.check)
                      : const SizedBox.shrink(),
                ],
              ),
            );
          },
        ))
      ],
    ));
  }

  Widget _map() {
    return const Expanded(
        child: GoogleMap(
      initialCameraPosition: CameraPosition(target: LatLng(0.0, 0.0)),
    ));
  }
}
