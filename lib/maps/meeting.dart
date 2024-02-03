import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapMeeting extends StatefulWidget {
  const MyMapMeeting({super.key});

  @override
  State<MyMapMeeting> createState() => _MyMapMeetingState();
}

class _MyMapMeetingState extends State<MyMapMeeting> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(16.06976454617307, 80.10070626729163),
    zoom: 12,
  );

  final List<Marker> myMarker = [];
  final List<Marker> markerList = const [
    Marker(
      markerId: MarkerId('second'),
      position: LatLng(16.06976454617307, 80.10070626729163),
      infoWindow: InfoWindow(title: 'Meetings Ground'),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myMarker.addAll(markerList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _initialPosition,
          mapType: MapType.terrain,
          markers: Set<Marker>.of(myMarker),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}
