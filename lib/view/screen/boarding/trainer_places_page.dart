import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:scala_flutter/controller/boarding/boarding_controller.dart';
import 'package:scala_flutter/model/maps/places/location.dart';
import 'package:scala_flutter/model/maps/places/places_result.dart';
import 'package:scala_flutter/navigation/routing_constants.dart';

class TrainerPlacesPage extends StatelessWidget {
  const TrainerPlacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var places = context.watch<BoardingController>().ui.trainerPlaces;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushNamed(RoutingConstants.boardingTrainerMapRoute.name);
          },
          child: const Icon(Icons.add)),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          final place = places[index];

          return InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(child: Text(place.name.toString())),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.clear))
                ],
              ),
            ),
            onTap: () {
              _showMapSheet(context, place);
            },
          );
        },
      ),
    );
  }

  _showMapSheet(BuildContext context, PlacesResult place) {
    final placeLocation = place.geometry!.location!.asLatLng();
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(place.name.toString()),
            ),
            Expanded(
              child: GoogleMap(
                initialCameraPosition:
                    CameraPosition(target: placeLocation, zoom: 12.0),
                markers: {
                  Marker(
                      markerId: MarkerId(place.placeId.toString()),
                      position: placeLocation)
                },
                liteModeEnabled: true,
              ),
            )
          ],
        );
      },
    );
  }
}
