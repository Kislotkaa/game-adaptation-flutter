import 'package:flutter/material.dart';
import 'package:game_adaptation_flutter/core/theme/colors/app_theme_colors.dart';
import 'package:game_adaptation_flutter/core/theme/models/app_theme_model.dart';
import 'package:game_adaptation_flutter/core/theme/models/app_text_model.dart';

class AppTheme {
  static final AppThemeModel light = AppThemeModel(
    basicColor: AppLightColors.white,
    textColor: AppLightColors.dark,
    brightness: Brightness.light,
    textTheme: const AppTextModel(
      body16Medium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        height: 1.0,
        fontWeight: FontWeight.w500,
        color: AppLightColors.dark,
      ),
    ),
  );

  static final AppThemeModel dark = AppThemeModel(
    basicColor: AppLightColors.dark,
    textColor: AppLightColors.white,
    brightness: Brightness.dark,
    textTheme: const AppTextModel(
      body16Medium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        height: 1.0,
        fontWeight: FontWeight.w500,
        color: AppLightColors.white,
      ),
    ),
  );
}
