import 'package:savart_remaster/src/resource/base.dart';

class ImageAssets {
  const ImageAssets._();
  static const _base = "${BasePaths.assets}/images";
  static const appIcon = "$_base/icon.png";

  static const returns = "$_base/returns.png";

  static const diverseProfile = "$_base/diverse_profile.png";

  static const coinRupee = "$_base/coin_rupee.png";

  static const ai = "$_base/ai.png";

  static const profile = "$_base/profile.png";
}

class AnimationAssets {
  const AnimationAssets._();

  static const _base = "${BasePaths.assets}/animations";

  static const rocket = "$_base/rocket.json";

  static const empty = "$_base/empty.json";
}