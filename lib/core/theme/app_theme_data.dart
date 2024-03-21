import 'package:flutter/material.dart';
import 'package:game_adaptation_flutter/core/theme/colors/app_theme_colors.dart';

class AppThemeData {
  static final ThemeData dark = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: AppDarkColors.dark,
      iconTheme: IconThemeData(
        color: AppDarkColors.white,
      ),
    ),
    dividerColor: Colors.transparent,
    brightness: Brightness.dark,
    // unselectedWidgetColor: AppDarkColors.darkText,
    // iconTheme: const IconThemeData(color: AppDarkColors.darkBorderButton),
    // shadowColor: AppHelpColors.shadowColor,
    // hoverColor: AppHelpColors.lighterWhite,
    // hintColor: AppFarforColors.unActiveGray,
    // disabledColor: AppHelpColors.shadingColor,
    scaffoldBackgroundColor: AppDarkColors.dark,
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 13.0,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppDarkColors.dark,
      // unselectedItemColor: AppFarforColors.unActiveGray,
      selectedItemColor: AppDarkColors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 22,
        fontWeight: FontWeight.w800,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: AppDarkColors.white,
        fontStyle: FontStyle.normal,
      ),
    ),
  );

  static final ThemeData light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: AppLightColors.white,
      iconTheme: IconThemeData(
          // color: AppLightColors.lightText,
          ),
    ),
    brightness: Brightness.light,
    dividerColor: Colors.transparent,
    // unselectedWidgetColor: AppLightColors.lightText,
    // iconTheme: const IconThemeData(color: AppLightColors.lightText),
    // scaffoldBackgroundColor: AppLightColors.lightBasic,
    // hintColor: AppFarforColors.unActiveGray,
    inputDecorationTheme: const InputDecorationTheme(
      //filled: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 13.0,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // backgroundColor: AppLightColors.lightBasic,
        // unselectedItemColor: AppFarforColors.unActiveGray,
        // selectedItemColor: AppLightColors.lightText,
        ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 22,
        fontWeight: FontWeight.w800,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: AppLightColors.dark,
        fontStyle: FontStyle.normal,
      ),
    ),
  );
}
