import 'package:flutter/material.dart';

import 'constants.dart';

sealed class Leilao63Theme {
  static const _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(3),
    ),
    borderSide: BorderSide(color: ColorsConstants.grey),
  );

  static ThemeData themeData = ThemeData(
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        labelStyle: const TextStyle(color: ColorsConstants.grey),
        border: _defaultInputBorder,
        enabledBorder: _defaultInputBorder,
        focusedBorder: _defaultInputBorder,
        errorBorder: _defaultInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorsConstants.red),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: ColorsConstants.brown,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
      fontFamily: FontConstants.fontFamily);
}
