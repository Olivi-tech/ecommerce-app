import 'package:flutter/material.dart';
import 'package:flutterify/screens/screens.dart';

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: mq.height * 0.06,
        left: mq.width * 0.05,
        right: mq.width * 0.05,
        child: TextFormField(
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.black.withOpacity(0.6)),
          controller: _searchController,
          decoration: InputDecoration(
            focusColor: Colors.black,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            suffixIcon: const Icon(Icons.search_sharp),
            hintText: 'Enter Your Location',
            hintStyle: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.black.withOpacity(0.6)),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15)),
          ),
        ));
  }
}
