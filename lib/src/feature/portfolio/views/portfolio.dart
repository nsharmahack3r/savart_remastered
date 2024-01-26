import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:savart_remaster/src/global/widgets/primary_button.dart';
import 'package:savart_remaster/src/resource/assets.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(AnimationAssets.rocket, height: 500),
        const Spacer(),
        PrimaryButton(text: "Get Started", ontap: (){},),
      ],
    );
  }
}