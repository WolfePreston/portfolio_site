import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    primaryColor: Appcolors.white,
    appBarTheme: const AppBarTheme(
      color: Appcolors.white,
      titleTextStyle: TextStyle(
        color: Appcolors.white,
      ),
    ),
  );
  static final ThemeData dark = ThemeData();
}
