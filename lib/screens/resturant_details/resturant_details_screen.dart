import 'package:flutter/material.dart';

class ResturantDetailsScreen extends StatelessWidget {
  const ResturantDetailsScreen({super.key});
  static const String routeName = '/resturant_details_screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const ResturantDetailsScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('ResturantDetailsScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Location Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/resturant_details_screen');
          },
        ),
      ),
    );
  }
}
