import 'package:flutter/material.dart';

abstract class ThemeEvent {}

class ChangeTheme extends ThemeEvent {
  final ThemeData themeData;

  ChangeTheme(this.themeData);
}
