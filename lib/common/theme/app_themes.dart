import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
    fontFamily: 'Jost',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,      
    ),
  );
}
