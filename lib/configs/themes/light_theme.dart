// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_config.dart';

final style = GoogleFonts.getFont(ThemeConfig.appMaineFontFamily);

ThemeData lightTheme = ThemeData.light().copyWith(
  textTheme: ThemeData.light().textTheme.copyWith(
        displayLarge: style.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ThemeConfig.darkColor),
        displayMedium: style.copyWith(),
        displaySmall: style.copyWith(),
        titleLarge: style.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: ThemeConfig.darkColor),
        titleMedium: style.copyWith(),
        titleSmall: style.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ThemeConfig.lightColor),
        bodyMedium: style.copyWith(),
        bodySmall: style.copyWith(),
        labelSmall: style.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: ThemeConfig.whiteTextColor),
        labelMedium: style.copyWith(),
        labelLarge: style.copyWith(),
      ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: ThemeConfig.darkColor, //<-- SEE HERE
  ),
  primaryColor: ThemeConfig.primaryColor,
  scaffoldBackgroundColor: ThemeConfig.scaffoldBackgroundColor,
  iconTheme: const IconThemeData(color: ThemeConfig.primaryColor, size: 20),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 17, horizontal: 14.5),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: ThemeConfig.borderColor,
        width: 1.2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: ThemeConfig.primaryColor,
        width: 1.2,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 4,
          shadowColor: Colors.black,
          padding: EdgeInsets.zero,
          backgroundColor: ThemeConfig.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)))),
);
