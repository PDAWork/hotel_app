import 'package:flutter/material.dart';

import 'color_app.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme.light(primary: primaryColor),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: background,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black
  ),
);
