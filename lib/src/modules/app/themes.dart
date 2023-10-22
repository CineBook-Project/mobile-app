import 'package:canal_olympia/src/core/utils/colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      scaffoldBackgroundColor: whiteColor,
      primaryColor: primaryColor,
      canvasColor: whiteColor,
      primaryIconTheme: const IconThemeData(color: blackColor),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontFamily: "SoraBold",
          color: blackColor,
        ),
        bodyMedium: TextStyle(
          fontFamily: "SoraRegular",
          color: blackColor,
        ),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: accentColor),
      colorScheme:
          const ColorScheme.light(primary: primaryColor, secondary: accentColor)
              .copyWith(background: whiteColor),
    ),
  };
}

enum AppTheme {
  lightTheme,
}
