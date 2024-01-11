import 'package:flutter/material.dart';
import 'package:test_application/routes/app_router.dart';
import 'package:test_application/style/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
      theme: appTheme,
    );
  }
}
