import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TestGoogleMaps extends StatefulWidget {
  const TestGoogleMaps({Key? key}) : super(key: key);

  @override
  State<TestGoogleMaps> createState() => _TestGoogleMapsState();
}

class _TestGoogleMapsState extends State<TestGoogleMaps> {
  @override
  void initState() {
    initialCameraPosition = const CameraPosition(zoom: 12,target: LatLng(31.043420848838892, 31.393035050225766));
    initMarkers();
    super.initState();
  }
  void initMarkers(){
    var myMarkers = const Marker(markerId: MarkerId("1"),position: LatLng(31.043420848838892, 31.393035050225766));
    markers.add(myMarkers);
  }
  Set<Marker> markers = {};
  late GoogleMapController googleMapController;
  late CameraPosition initialCameraPosition;
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      markers: markers,
        initialCameraPosition: initialCameraPosition);
  }
}
