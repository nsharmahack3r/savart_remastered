import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savart_remaster/src/feature/onboarding/views/onboarding.dart';
import 'package:savart_remaster/src/resource/assets.dart';
import 'package:savart_remaster/src/resource/strings.dart';
import 'package:savart_remaster/src/resource/text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const route = "/splash";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value){
      context.pushReplacement(OnBoardingView.route);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeInUp(child: Image.asset(ImageAssets.appIcon, height: 200,)),
              const Text(AppStrings.appName, style: AppTextStyles.largeLogo,),
            ],
          ),
        ),
      ),
    );
  }
}