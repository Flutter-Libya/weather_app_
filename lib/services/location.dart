import 'package:geolocator/geolocator.dart';


class Location{
  Location({this.lat,this.lon});
  double lat;
  double lon;

  Future<void> getCurrentLocation() async {
    try {
      Geolocator geolocator = Geolocator();
      Position position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      lon = position.longitude;
    } catch (e) {
      print(e);
    }
  }

}