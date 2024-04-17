import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapPage extends StatefulWidget {
  final List<Map<String, dynamic>> data;
   MapPage({super.key, required this.data});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _marker = {};
  final Set<Polyline> _polyline = {};

  @override
  void initState() {
    super.initState();
    // Fetching data passed from the previous screen
    List<Map<String, dynamic>> data = widget.data;

    // Extracting latitude and longitude values from the data
    List<LatLng> latlng = data.map((entry) {
      double lat = entry['latitude'];
      double lng = entry['longitude'];
      return LatLng(lat, lng);
    }).toList();

    // Adding markers
    for(int i = 0; i < latlng.length; i++) {
      _marker.add(
        Marker(
          markerId: MarkerId(i.toString()),
          position: latlng[i],
          infoWindow: InfoWindow(
              title: 'Player 1 Location',
              snippet: '5 star rating'
          ),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    }

    // Adding polyline
    _polyline.add(
      Polyline(
        polylineId: PolylineId('1'),
        points: latlng,
        color: Colors.black,
        width: 12,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          //replace with our own icon data.
        ),
        title: Stack(
          children: <Widget>[
            Text(
              'Map View',
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
      body: GoogleMap(
        polylines: _polyline,
        markers: _marker,
        initialCameraPosition: CameraPosition(
          target: _marker.isNotEmpty ? _marker.first.position : LatLng(0, 0), // Set initial position to the first marker
          zoom: 14,
        ),
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
