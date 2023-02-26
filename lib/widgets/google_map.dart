import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({super.key, required this.lat, required this.lan});
  final double lat;
  final double lan;

  @override
  Widget build(BuildContext context) {
    return const GoogleMap(
      myLocationEnabled: true,
      initialCameraPosition: CameraPosition(target: LatLng(10, 10), zoom: 5),
    );
  }
}
