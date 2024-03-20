import 'package:flutter/painting.dart';

class AppTextModel {
  final TextStyle body16Medium;

  const AppTextModel({
    required this.body16Medium,
  });

  AppTextModel copyWith({
    required TextStyle body16Medium,
  }) {
    return AppTextModel(
      body16Medium: body16Medium,
    );
  }

  static AppTextModel lerp(AppTextModel begin, AppTextModel end, double t) => AppTextModel(
        body16Medium: begin.body16Medium.copyWith(
          color: Color.lerp(begin.body16Medium.color, end.body16Medium.color, t),
        ),
      );
}
