import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromRGBO(219, 136, 27, 1);
  static const Color secondaryColor = Color.fromRGBO(248, 248, 248, 1);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: secondaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        // ********* HEADLINES *********
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),

        // ********* BODY TEXT *********
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
        bodySmall: TextStyle(fontSize: 12, color: Colors.black),

        // ********* SUBTITLE TEXT - FADED *********
        titleLarge: TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(99, 99, 99, 1.0),
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          fontSize: 14,
          color: Color.fromRGBO(99, 99, 99, 1.0),
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: 12,
          color: Color.fromRGBO(99, 99, 99, 1.0),
          fontWeight: FontWeight.w500,
        ),
      ),

      // ********* TEXT BUTTON THEME *********
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      // ********* ELEVATED BUTTON THEME *********
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 5,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),

      // ********* TextField Theme *********
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(color: Color.fromRGBO(99, 99, 99, 1.0)),
        labelStyle: const TextStyle(color: Color.fromRGBO(99, 99, 99, 1.0)),
        floatingLabelStyle: const TextStyle(color: primaryColor),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color.fromRGBO(99, 99, 99, 1.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color.fromRGBO(99, 99, 99, 1.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryColor),
        ),
      ),
    );
  }
}
