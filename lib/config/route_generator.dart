import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutterify/screens/screens.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    log('Route Name is : ${settings.name}');
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case ResturantDetailsScreen.routeName:
        return ResturantDetailsScreen.route();
      case ResturantListingScreen.routeName:
        return ResturantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Error Screen'),
        ),
        body: const Center(
          child: Text('Error Screen'),
        ),
      ),
    );
  }
}
