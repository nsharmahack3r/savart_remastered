import 'package:flutter/material.dart';
import 'package:savart_remaster/src/resource/assets.dart';
import 'package:savart_remaster/src/resource/strings.dart';
import 'package:savart_remaster/src/resource/text_style.dart';

class SavartBranding extends StatelessWidget {
  const SavartBranding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppStrings.appName,
          style: AppTextStyles.largeLogo,
        ),
        Image.asset(
          ImageAssets.appIcon,
          height: 80,
        ),
      ],
    );
  }
}
