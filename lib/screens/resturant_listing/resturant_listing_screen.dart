import 'package:flutter/material.dart';

class ResturantListingScreen extends StatelessWidget {
  const ResturantListingScreen({super.key});
  static const String routeName = '/resturant_listing_screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const ResturantListingScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Resturant Listing Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Resturant Listing Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/resturant_listing_screen');
          },
        ),
      ),
    );
  }
}
