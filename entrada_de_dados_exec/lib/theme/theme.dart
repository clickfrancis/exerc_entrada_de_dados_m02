import 'package:flutter/material.dart';

class ThemeApp {
  static final lights = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
  );

  static final darks = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.purple,
  );
}
