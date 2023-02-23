import 'package:flutter/material.dart';
import 'package:flutterify/config/route_generator.dart';
import 'package:flutterify/config/theme.dart';
import 'screens/screens.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(context),
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
