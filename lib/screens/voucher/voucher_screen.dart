import 'package:flutter/material.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});
  static const String routeName = '/voucher_screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const VoucherScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Voucher Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Voucher Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/voucher_screen');
          },
        ),
      ),
    );
  }
}
