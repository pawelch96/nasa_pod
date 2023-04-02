import 'package:flutter/material.dart';

class AppConstants {
  //ICONS
  static const double iconSize = 36;

  //PADDINGS
  static const double paddingSmall = 8;
  static const double paddingMedium = 16;
  static const double paddingBig = 24;

  //GRADIENTS
  static final LinearGradient blackGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.black.withOpacity(0.4),
      Colors.black,
    ],
  );
}
