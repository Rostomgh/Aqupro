import 'package:aquapro/core/Animation/BottomSheetAnimation.dart';
import 'package:aquapro/core/Compo/Informationfournisseur.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Gmap extends StatelessWidget {
  final double latitude;
  final double longitude;

  const Gmap({
    super.key,
    this.latitude = 37.43296265331129, // Default value
    this.longitude = -122.08832357078792, // Default value
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(latitude, longitude),
              zoom: 5,
            ),
          ),
          const Positioned.fill(
            child: MyDraggableSheet(
              child: CustomCBottomSheet(),
            ),
          ),
        ],
      ),
    );
  }
}
