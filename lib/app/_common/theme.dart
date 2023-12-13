import 'package:flutter/material.dart';

class CubosFoodTheme {
  static const color1 = Color(0xFF7C5AED);

  static const sepatorColor = Color(0xFFA39797);

  static final instance = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF6750A4),
      onPrimary: Colors.white,
      outline: Color(0xFF1D1B20),
      surfaceVariant: Color(0xFF49454F),
      onSurface: Color(0xFF1D1B20),
      surface: Color(0xFFFEF7FF),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        elevation: 0,
        backgroundColor: color1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 24,
        ),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 25,
        ),
        surfaceTintColor: Colors.transparent,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
  );
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;
}
