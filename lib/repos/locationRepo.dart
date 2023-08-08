import 'package:location/location.dart';

class LocationRepository {
  final Location location = Location();

  Future<LocationData?> getCurrentLocation() async {
    try {
      PermissionStatus permissionStatus = await location.hasPermission();
      if (permissionStatus == PermissionStatus.denied) {
        permissionStatus = await location.requestPermission();
        if (permissionStatus != PermissionStatus.granted) {
          return null;
        }
      }
      return await location.getLocation();
    } catch (e) {
      print('Error fetching location: $e');
      return null;
    }
  }
}
