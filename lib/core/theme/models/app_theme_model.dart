import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_adaptation_flutter/core/theme/models/app_text_model.dart';

class AppThemeModel {
  final Color basicColor;
  final Color textColor;

  final Brightness brightness;
  final AppTextModel textTheme;

  factory AppThemeModel({
    required Color textColor,
    required Color basicColor,
    required Brightness brightness,
    required AppTextModel textTheme,
  }) {
    return AppThemeModel.raw(
      textColor: textColor,
      basicColor: basicColor,
      brightness: brightness,
      textTheme: textTheme,
    );
  }

  const AppThemeModel.raw({
    required this.textColor,
    required this.textTheme,
    required this.basicColor,
    required this.brightness,
  });

  static AppThemeModel lerp(AppThemeModel begin, AppThemeModel end, double t) {
    return AppThemeModel(
      textColor: Color.lerp(begin.textColor, end.textColor, t)!,
      basicColor: Color.lerp(begin.basicColor, end.basicColor, t)!,
      brightness: begin.brightness,
      textTheme: AppTextModel.lerp(begin.textTheme, end.textTheme, t),
    );
  }
}
