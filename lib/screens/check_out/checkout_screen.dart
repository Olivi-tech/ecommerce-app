import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  static const String routeName = '/checkout-screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const CheckoutScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('CheckoutScren'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('CheckoutScren'),
          onPressed: () {
            Navigator.pushNamed(context, '/checkout-screen');
          },
        ),
      ),
    );
  }
}
