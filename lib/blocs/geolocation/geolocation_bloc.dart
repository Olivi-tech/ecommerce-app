import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterify/repositories/geoloation/geolocattion_repository.dart';
import 'package:geolocator/geolocator.dart';
part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeoLocationRepository _geoLocationRepository;
  final StreamSubscription? _geoLocationSubscription;
  GeolocationBloc(this._geoLocationSubscription,
      {required GeoLocationRepository geoLocationRepository})
      : _geoLocationRepository = geoLocationRepository,
        super(GeolocationLoading());

  @override
  Stream<GeolocationState> mapEventToState(GeolocationEvent event) async* {
    if (event is LoadGeoLocation) {
      yield* _mapLoadGeoLocationToState();
    } else if (event is UpdateGeoloaction) {
      yield* _mapUpdateGeoLocationToState;
    } else {}
  }

  Stream<GeolocationState> _mapLoadGeoLocationToState() async* {
    _geoLocationSubscription?.cancel();
    final Position position = await _geoLocationRepository.getCurrentLocation();
    add(UpdateGeoloaction(position: position));
  }

  Stream<GeolocationState> _mapUpdateGeoLocationToState() async* {
    _geoLocationSubscription?.cancel();
    final Position position = await _geoLocationRepository.getCurrentLocation();
    add(UpdateGeoloaction(position: position));
  }
}
