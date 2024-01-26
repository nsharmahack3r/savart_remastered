import 'package:flutter/material.dart';
import 'package:savart_remaster/src/feature/onboarding/repository/onboarding.dart';

class OnBoardPageComponent extends StatelessWidget {
  const OnBoardPageComponent({
    super.key,
    required this.page,
  });

  final OnBoardPage page;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(page.imageAsset, height: 200,),
        const SizedBox(height: 100,),
        Text(
          page.content,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
