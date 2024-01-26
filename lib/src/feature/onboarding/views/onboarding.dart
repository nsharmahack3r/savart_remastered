import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savart_remaster/src/feature/authentication/views/login.dart';
import 'package:savart_remaster/src/feature/onboarding/repository/onboarding.dart';
import 'package:savart_remaster/src/feature/onboarding/views/widgets/onboard_page.dart';
import 'package:savart_remaster/src/global/widgets/branding.dart';
import 'package:savart_remaster/src/global/widgets/primary_button.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static const route = "/onboarding";

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final _pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              FadeInDown(
                child: const SavartBranding(),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: onboardingPages
                      .map((page) => OnBoardPageComponent(page: page))
                      .toList(),
                ),
              ),
              FadeInUp(
                child: PrimaryButton(
                  text: 'Next',
                  ontap: () {
                    if (index < onboardingPages.length - 1) {
                      _pageController.animateToPage(
                        ++index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      context.pushReplacement(LoginView.route);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
