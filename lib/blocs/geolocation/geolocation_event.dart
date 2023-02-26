part of 'geolocation_bloc.dart';

abstract class GeolocationEvent extends Equatable {
  const GeolocationEvent();
  @override
  List<Object?> get props => [];
}

class LoadGeoLocation extends GeolocationEvent {}

class UpdateGeoloaction extends GeolocationEvent {
  final Position position;
  const UpdateGeoloaction({required this.position});
  @override
  List<Object?> get props => [position];
}
