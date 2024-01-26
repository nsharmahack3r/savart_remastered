import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor customBlue = MaterialColor(
    _customBluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3E8FD),
      100: Color(0xFFBBC8F9),
      200: Color(0xFF93A5F6),
      300: Color(0xFF6B82F2),
      400: Color(0xFF435FEF),
      500: Color(_customBluePrimaryValue),
      600: Color(0xFF1F3BEC),
      700: Color(0xFF1734E2),
      800: Color(0xFF122DD8),
      900: Color(0xFF0A25CE),
    },
  );
  static const int _customBluePrimaryValue = 0xFF2856F0;
}
