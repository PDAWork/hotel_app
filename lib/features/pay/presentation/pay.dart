import 'package:flutter/material.dart';
import 'package:test_application/routes/app_router.dart';
import 'package:test_application/routes/router_utils.dart';

class Pay extends StatelessWidget {
  const Pay({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          AppRouter.router.go(Pages.hotel.screenPath);
        },
        child: Text(''),
      ),
    );
  }
}
