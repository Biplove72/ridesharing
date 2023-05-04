import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});
  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;

    final LatLng _center = const LatLng(28.3949, 84.1240);

    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }

    return GoogleMap(
      myLocationEnabled: true,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
    );
  }
}

//testing purpose for different kind of devices
// class MapPage extends StatelessWidget {
//   const MapPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         height: double.infinity,
//         child: Image.asset(
//           'assets/images/ridesharing.jpg',
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
