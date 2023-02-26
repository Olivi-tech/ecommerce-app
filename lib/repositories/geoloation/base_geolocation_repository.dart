// ignore_for_file: file_names

import 'package:geolocator/geolocator.dart';

abstract class BaseGeolocationRepository {
  Future<Position?> getCurrentLocation();
}
