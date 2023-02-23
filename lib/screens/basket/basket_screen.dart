import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});
  static const String routeName = '/basket';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const BasketScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Basket Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Basket Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/basket');
          },
        ),
      ),
    );
  }
}
