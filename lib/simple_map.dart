import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMap extends StatefulWidget {
  SimpleMap({Key? key}) : super(key: key);

  @override
  _SimpleMapState createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {
  // ADDING POSITION CORDINATES
  static final LatLng _kMapCenter = LatLng(41.029430, 29.098379);

  // CAMERA SETTINGS
  static final CameraPosition _KInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  // ADDING MARKER
  Set<Marker> _createMarker() {
    return {
      Marker(
          markerId: MarkerId("marker_1"),
          position: _kMapCenter,
          infoWindow: InfoWindow(title: 'Marker 1'),
          rotation: 360),
    };
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Demo'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:
          // GoogleMap Widget
          GoogleMap(
        initialCameraPosition: _KInitialPosition, // Camera Settings
        mapType: MapType.normal, // Map Type
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        markers: _createMarker(),
        trafficEnabled: true, // Create Marker
      ),
    ));
  }
}
