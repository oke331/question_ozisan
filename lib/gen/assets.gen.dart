/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetImageGen {
  const $AssetImageGen();

  /// File path: asset/image/fat.PNG
  AssetGenImage get fat => const AssetGenImage('asset/image/fat.PNG');

  /// File path: asset/image/slim.PNG
  AssetGenImage get slim => const AssetGenImage('asset/image/slim.PNG');
}

class $AssetSoundGen {
  const $AssetSoundGen();

  /// File path: asset/sound/fat_se.mp3
  String get fatSe => 'asset/sound/fat_se.mp3';

  /// File path: asset/sound/slim_se.mp3
  String get slimSe => 'asset/sound/slim_se.mp3';
}

class Assets {
  Assets._();

  static const $AssetImageGen image = $AssetImageGen();
  static const $AssetSoundGen sound = $AssetSoundGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
