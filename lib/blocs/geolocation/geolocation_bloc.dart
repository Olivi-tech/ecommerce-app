import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterify/repositories/geoloation/geolocattion_repository.dart';
import 'package:geolocator/geolocator.dart';
part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeoLocationState> {
  final GeoLocationRepository _geoLocationRepository;
  StreamSubscription? _geoLocationSubscription;
  GeolocationBloc({required GeoLocationRepository geoLocationRepository})
      : _geoLocationRepository = geoLocationRepository,
        super(GeolocationLoading());

  Stream<GeoLocationState> mapEventToState(GeolocationEvent event) async* {
    if (event is LoadGeoLocationEvent) {
      yield* _mapLoadGeoLocationToState();
    } else if (event is UpdateGeoloactionEvent) {
      yield* _mapUpdateGeoLocationToState();
    } else {}
  }

  Stream<GeoLocationState> _mapLoadGeoLocationToState() async* {
    _geoLocationSubscription?.cancel();
    final Position? position =
        await _geoLocationRepository.getCurrentLocation();
    add(UpdateGeoloactionEvent(position: position!));
  }

  Stream<GeoLocationState> _mapUpdateGeoLocationToState() async* {
    _geoLocationSubscription?.cancel();
    final Position? position =
        await _geoLocationRepository.getCurrentLocation();
    add(UpdateGeoloactionEvent(position: position!));
  }

  @override
  Future<void> close() {
    _geoLocationSubscription!.cancel();
    return super.close();
  }
}
