// theme.dart
import 'package:flutter/material.dart';
import 'color.dart'; // Đảm bảo bạn đã import đúng file color.dart

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.hintColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black87),
      bodyMedium: TextStyle(color: Colors.black54),
      titleLarge: TextStyle(color: Colors.black87, fontSize: 20),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.hintColor,
      background: AppColors.backgroundColor,
      surface: Colors.white,
      // Hoặc màu sáng khác cho surface
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onBackground: Colors.black87,
      onSurface: Colors.black,
      onError: Colors.white,
    ).copyWith(background: AppColors.backgroundColor),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.hintColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueGrey,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
      titleLarge: TextStyle(color: Colors.white, fontSize: 20),
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      secondary: AppColors.hintColor,
      background: Colors.grey[900]!,
      surface: Colors.black,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.white,
      onSurface: Colors.white,
      onError: Colors.black,
    ).copyWith(background: Colors.grey[900]!),
  );
}
