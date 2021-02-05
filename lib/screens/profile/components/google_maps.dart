import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressMap extends StatefulWidget {

  AddressMap({Key key}) : super(key: key);

  @override
  _AddressMapState createState() => _AddressMapState();
}

class _AddressMapState extends State<AddressMap> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {

    return
        SizedBox(
        //width: 100,  // or use fixed size like 200
        height: 200,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(46.2587, 20.14222), zoom: 16),
            compassEnabled: false,
            myLocationButtonEnabled: false,
            scrollGesturesEnabled: false,
            tiltGesturesEnabled: false,
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            rotateGesturesEnabled: false,
            mapToolbarEnabled: false,
            markers: [
              Marker(
                markerId: MarkerId("Szegedi Tudomanyegyetem"),
                position: LatLng(46.2587, 20.14222),
                draggable: false,
              ),
            ].toSet(),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        );
  }
}