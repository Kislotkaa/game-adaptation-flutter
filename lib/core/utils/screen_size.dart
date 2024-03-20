import 'package:flutter/material.dart';

enum ScreenSize {
  small,
  medium,
  large;

  static ScreenSize current(final BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) {
      return ScreenSize.small;
    }

    if (width < 700) {
      return ScreenSize.medium;
    }

    return ScreenSize.large;
  }
}
