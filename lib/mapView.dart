import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = const CameraPosition(target: LatLng(37.000, -122.00),
    zoom: 14
  );

  final Set<Marker> _marker = {};
  final Set<Polyline> _polyline = {};


  List<LatLng> latlng = [
    LatLng(37.0025612, -121.9900840),
    LatLng(37.0025789, -121.9981904),
    LatLng(37.00994568, -121.9900999),
    LatLng(37.0025612, -121.9900840),
  ];
  
  @override 
  void initState(){
    super.initState();
    for(int i=0; i<latlng.length; i++){
      _marker.add(Marker(markerId: MarkerId(i.toString()),
        position: latlng[i],
        infoWindow: InfoWindow(
          title: 'Player 1 Location',
          snippet: '5 star rating'
        ),
        icon: BitmapDescriptor.defaultMarker,
      )
      );
      setState(() {

      });
      _polyline.add(
        Polyline(polylineId: PolylineId('1'),
          points: latlng,
          color: Colors.black,
          width: 12,
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios),
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
        initialCameraPosition:  _kGooglePlex,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller){
        _controller.complete(controller);
        },
      )
    );
  }
}

