import 'package:flutter/material.dart';
import 'package:flutterify/widgets/google_map.dart';
import 'package:flutterify/widgets/location_search_box.dart';

late Size mq;

class HomeScreen extends StatelessWidget {
  static final TextEditingController _searchController =
      TextEditingController();

  const HomeScreen({super.key});
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMapWidget(
            lan: 10,
            lat: 10,
          ),
          LocationSearchBox(searchController: _searchController),
          Positioned(
            left: mq.width * 0.2,
            right: mq.width * 0.2,
            top: mq.height * 0.9,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.white,
                shape: const StadiumBorder(),
                textStyle: Theme.of(context).textTheme.titleSmall,
              ),
              child: const Text('Save Loaction'),
            ),
          ),
        ],
      ),
    );
  }
}
