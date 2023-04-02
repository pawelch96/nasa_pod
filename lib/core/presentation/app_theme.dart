import 'package:flutter/material.dart';

class AppTheme {
  static const Color _nasaBlue = Color(0xFF0B3D91);
  static const Color _nasaRed = Color(0xFFFC3D21);

  static const TextTheme _textTheme = TextTheme(
    bodyLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  );

  static const ColorScheme _colorScheme = ColorScheme.light(
    primary: _nasaBlue,
    secondary: _nasaRed,
  );

  static final AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: _nasaBlue,
    titleTextStyle: _textTheme.bodyLarge,
    actionsIconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );

  static final ThemeData data = ThemeData(
    colorScheme: _colorScheme,
    textTheme: _textTheme,
    appBarTheme: _appBarTheme,
    scaffoldBackgroundColor: Colors.black,
  );
}
