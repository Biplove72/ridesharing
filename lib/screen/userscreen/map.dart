import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapPage extends StatelessWidget {
//   const MapPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     late GoogleMapController mapController;

//     final LatLng _center = const LatLng(28.3949, 84.1240);

//     void _onMapCreated(GoogleMapController controller) {
//       mapController = controller;
//     }

//     return GoogleMap(
//       mapType: MapType.normal,
//       compassEnabled: true,
//       myLocationEnabled: true,
//       onMapCreated: _onMapCreated,
//       initialCameraPosition: CameraPosition(
//         target: _center,
//         zoom: 11.0,
//       ),
//     );
//   }
// }

class MapPage extends StatelessWidget {
  MapPage({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.3949, 84.1240),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: getCurrenPosiotion,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
      body: GoogleMap(
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  void getCurrenPosiotion() async {
    LocationPermission permission = await Geolocator.requestPermission();
    final GoogleMapController controller = await _controller.future;
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: LatLng(position.latitude, position.longitude),
        zoom: 25.0,
      ),
    ));
  }
}
