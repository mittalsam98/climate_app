import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:climateapp/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
    getPosition();
  }

  void getPosition() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getPosition();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
