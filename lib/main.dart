import 'package:flutter/material.dart';
import 'package:test_application/dj/service_locator.dart';
import 'package:test_application/features/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const App());
}
