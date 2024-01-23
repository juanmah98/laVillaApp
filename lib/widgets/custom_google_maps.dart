import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<CustomGoogleMap> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 300,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(38.5622771, -0.2155648), // Coordenadas iniciales
            zoom: 12.0,
          ),
        ),
      )
    ;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}
