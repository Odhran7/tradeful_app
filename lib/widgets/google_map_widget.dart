import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:tradeful_app/utils/Dimensions.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../utils/colors.dart';

class GMap extends StatefulWidget {
  const GMap({super.key});

  @override
  State<GMap> createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  late GoogleMapController mapController;
  LatLng? _center; // Changed to nullable
  Location location = Location();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  _getCurrentLocation() async {
    try {
      PermissionStatus permissionStatus = await location.hasPermission();
      if (permissionStatus == PermissionStatus.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        permissionStatus = await location.requestPermission();
        if (permissionStatus != PermissionStatus.granted) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Location permissions not granted')));
          return;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Location permissions granted')));
        }
      }
      LocationData locationData = await location.getLocation();
      setState(() {
        _center = LatLng(locationData.latitude!, locationData.longitude!);
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error fetching location: $e')));
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _center == null
        ? Center(child: CircularProgressIndicator())
        : Container(
            height: Dimensions.screenHeight / 2,
            margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                top: Dimensions.height30,
                bottom: Dimensions.height30),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition:
                        CameraPosition(target: _center!, zoom: 14.0),
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                  ),
                ),
                Positioned(
                  // This widget is added to align the buttons at the bottom
                  bottom:
                      16, // Adjust this value to set the distance from the bottom
                  left: 120,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.textColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        ),
                        onPressed: () {
                          // TODO
                        },
                        child: SmallText(
                            text: "Set Location",
                            size: 15,
                            color: AppColors.mainColor),
                      ),
                                            FloatingActionButton(
                        backgroundColor: AppColors.textColor,
                        onPressed: () {
                          mapController.animateCamera(
                              CameraUpdate.newCameraPosition(
                                  CameraPosition(target: _center!, zoom: 16)));
                        },
                        child: Icon(Icons.center_focus_strong,
                            color: AppColors.mainColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
