part of 'geolocation_bloc.dart';

abstract class GeoLocationState extends Equatable {
  const GeoLocationState();
  @override
  List<Object?> get props => [];
}

class GeolocationLoading extends GeoLocationState {}

class GeolocationLoaded extends GeoLocationState {
  final Position position;
  const GeolocationLoaded({required this.position});
  @override
  List<Object?> get props => [position];
}

class GeolocationError extends GeoLocationState {}
