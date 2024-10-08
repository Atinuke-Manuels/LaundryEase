/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/screen1.png
  AssetGenImage get screen1 => const AssetGenImage('assets/images/screen1.png');

  /// File path: assets/images/screen2.png
  AssetGenImage get screen2 => const AssetGenImage('assets/images/screen2.png');

  /// File path: assets/images/screen3.png
  AssetGenImage get screen3 => const AssetGenImage('assets/images/screen3.png');

  /// List of all assets
  List<AssetGenImage> get values => [screen1, screen2, screen3];
}

class $AssetsProfileGen {
  const $AssetsProfileGen();

  /// File path: assets/profile/Account.png
  AssetGenImage get account =>
      const AssetGenImage('assets/profile/Account.png');

  /// File path: assets/profile/Reviews.png
  AssetGenImage get reviews =>
      const AssetGenImage('assets/profile/Reviews.png');

  /// File path: assets/profile/left_curve.png
  AssetGenImage get leftCurve =>
      const AssetGenImage('assets/profile/left_curve.png');

  /// File path: assets/profile/right_curve.png
  AssetGenImage get rightCurve =>
      const AssetGenImage('assets/profile/right_curve.png');

  /// File path: assets/profile/track.png
  AssetGenImage get track => const AssetGenImage('assets/profile/track.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [account, reviews, leftCurve, rightCurve, track];
}

class Assets {
  Assets._();

  static const AssetGenImage email = AssetGenImage('assets/email.png');
  static const AssetGenImage facebook = AssetGenImage('assets/facebook.png');
  static const AssetGenImage forgotImg = AssetGenImage('assets/forgot_img.png');
  static const AssetGenImage getStarted =
      AssetGenImage('assets/getStarted.png');
  static const AssetGenImage google = AssetGenImage('assets/google.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const AssetGenImage otpImg = AssetGenImage('assets/otp_img.png');
  static const AssetGenImage passwordResetSuccessful =
      AssetGenImage('assets/password_reset_successful.png');
  static const $AssetsProfileGen profile = $AssetsProfileGen();
  static const AssetGenImage pswImg = AssetGenImage('assets/psw_img.png');
  static const AssetGenImage resetImg = AssetGenImage('assets/reset_img.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
        email,
        facebook,
        forgotImg,
        getStarted,
        google,
        otpImg,
        passwordResetSuccessful,
        pswImg,
        resetImg
      ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
