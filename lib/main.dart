import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterify/blocs/blocs.dart';
import 'package:flutterify/config/route_generator.dart';
import 'package:flutterify/config/theme.dart';
import 'package:flutterify/repositories/geoloation/geolocattion_repository.dart';
import 'screens/screens.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GeoLocationRepository>(
          create: (context) => GeoLocationRepository(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => GeolocationBloc(
                  geoLocationRepository: context.read<GeoLocationRepository>())
                ..add(LoadGeoLocationEvent()))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(context),
          initialRoute: HomeScreen.routeName,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
