import 'package:flutter/material.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    colorScheme: const ColorScheme(
      primary: Color(0xFFFE3C5B),
      secondary: Color(0xFFe84545),
      background: Color(0xFFFFFFFF),
      surface: Color(0xFFFFFFFF),
      error: Color(0x00000000),
      brightness: Brightness.light,
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFFFFFFFF),
      onError: Color(0xFF2b2e4a),
      onBackground: Color(0xFF2b2e4a),
      onSurface: Color(0xFF2b2e4a),
    ),
    fontFamily: 'Futura',
    appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: Colors.white)),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
          fontSize: 16,
          color: Colors.white,
          wordSpacing: 0.5,
          fontWeight: FontWeight.bold),
      titleMedium:
          TextStyle(fontSize: 18, color: Colors.white, wordSpacing: 0.5),
      titleLarge:
          TextStyle(fontSize: 20, color: Colors.white, wordSpacing: 0.5),
      displaySmall:
          TextStyle(fontSize: 22, color: Colors.white, wordSpacing: 0.5),
      displayMedium:
          TextStyle(fontSize: 24, color: Colors.white, wordSpacing: 0.5),
      displayLarge:
          TextStyle(fontSize: 26, color: Colors.white, wordSpacing: 0.5),
    ),
  );
}
