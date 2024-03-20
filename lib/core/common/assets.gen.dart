/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Raleway-Black-new.ttf
  String get ralewayBlackNew => 'assets/fonts/Raleway-Black-new.ttf';

  /// File path: assets/fonts/Raleway-Bold-new.ttf
  String get ralewayBoldNew => 'assets/fonts/Raleway-Bold-new.ttf';

  /// File path: assets/fonts/Raleway-ExtraBold-new.ttf
  String get ralewayExtraBoldNew => 'assets/fonts/Raleway-ExtraBold-new.ttf';

  /// File path: assets/fonts/Raleway-Medium-new.ttf
  String get ralewayMediumNew => 'assets/fonts/Raleway-Medium-new.ttf';

  /// File path: assets/fonts/Raleway-Regular-new.ttf
  String get ralewayRegularNew => 'assets/fonts/Raleway-Regular-new.ttf';

  /// File path: assets/fonts/Raleway-SemiBold-new.ttf
  String get ralewaySemiBoldNew => 'assets/fonts/Raleway-SemiBold-new.ttf';

  /// List of all assets
  List<String> get values =>
      [ralewayBlackNew, ralewayBoldNew, ralewayExtraBoldNew, ralewayMediumNew, ralewayRegularNew, ralewaySemiBoldNew];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/minus.svg
  SvgGenImage get minus => const SvgGenImage('assets/icons/minus.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// List of all assets
  List<SvgGenImage> get values => [minus, plus];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
