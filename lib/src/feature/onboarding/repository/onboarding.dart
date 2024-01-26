import 'package:savart_remaster/src/resource/assets.dart';

class OnBoardPage {
  final String imageAsset;
  final String content;
  OnBoardPage({
    required this.imageAsset,
    required this.content,
  });
}

final onboardingPages = [
  OnBoardPage(
    imageAsset: ImageAssets.coinRupee,
    content: "Make High Quality Investments",
  ),
  OnBoardPage(
    imageAsset: ImageAssets.diverseProfile,
    content: "Build a diversified portfolio",
  ),
  OnBoardPage(
    imageAsset: ImageAssets.returns,
    content: "Achieve superior\nReturns",
  ),
  OnBoardPage(
    imageAsset: ImageAssets.ai,
    content: "Leading-edge Al-based investment advisory system",
  ),
];
