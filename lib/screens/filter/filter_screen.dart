import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static const String routeName = '/filter_screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const FilterScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Filter Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Filter Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/filter_screen');
          },
        ),
      ),
    );
  }
}
