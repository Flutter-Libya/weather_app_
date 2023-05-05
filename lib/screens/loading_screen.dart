import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import '../services/location.dart';

const apikey = "d62f8f0a6c852feccb4ad60ac4b06499";

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double lat;
  double lon;

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  //
  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    lat = location.lat;
    lon = location.lon;
    NetworkHelper networkHelper = NetworkHelper(
        "http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apikey");
    var weatherData = await networkHelper.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
