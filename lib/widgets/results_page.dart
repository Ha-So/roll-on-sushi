import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:google_place/google_place.dart';
import 'dart:developer';

class ResultsPage extends StatefulWidget {
  final String? title;
  final int? fChoice;
  final int? rChoice;
  final List<String>? eChoices;


  ResultsPage({Key? key, this.title, this.fChoice, this.rChoice, this.eChoices})
      : super(key: key);

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  late GoogleMapController _controller;
  late Position currentLocation;

  Future _getPos() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentLocation = position;
    print(currentLocation);
    _initialcameraposition = LatLng(currentLocation.latitude, currentLocation.longitude);
    print(_initialcameraposition);
    /*var googlePlace = GooglePlace("APIKEY");
    var result = await googlePlace.search.getNearBySearch(
        //Location(lat: -33.8670522, lng: 151.1957362), 1500,
       Location(lat: 40.7128, lng: -73.935242 ), 10000,
        type: "restaurant", keyword: "italian");*/
    var googlePlace = GooglePlace("APIKEY");
    var result = await googlePlace.queryAutocomplete.get("pizza near sydne");
    try{
      print("from try");
      print(result!.status);
    }
    catch(e){
      print("from catch");
      print(e);
    }


  }


  void _onMapCreated(GoogleMapController _cntlr)
  {
    _controller = _cntlr;
   /* _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude),zoom: 15),
        ),
      );
    });*/
  }


  @override
  Widget build(BuildContext context) {
    print("Start");
    _getPos();
    print("End");



    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: _initialcameraposition),
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
/* Color titleColor = Color(0xff4B4849); // Color(0xff393D3D);
  Color backColor = Colors.white; //Color(0xffA4A5A6);
  Color buttonColor = Color(0xff176AA6);*/

/*
  @override
  Widget build(BuildContext context) {
    print(widget.fChoice);
    print(widget.rChoice);
    print(widget.eChoices);

    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        //body: Text(widget.text1)
      ),
    );
  }*/
