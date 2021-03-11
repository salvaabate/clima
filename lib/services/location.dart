import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude, _longitude;

  void _setLatAndLong(Position position) {
    _latitude = position.latitude;
    _longitude = position.longitude;
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      _setLatAndLong(position);
    } catch (e) {}
  }

  double getLatitude() {
    return _latitude;
  }

  double getLongitude() {
    return _longitude;
  }
}
