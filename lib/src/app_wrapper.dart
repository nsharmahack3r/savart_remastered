import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:savart_remaster/src/feature/advice/views/advice.dart';
import 'package:savart_remaster/src/feature/portfolio/views/portfolio.dart';
import 'package:savart_remaster/src/global/widgets/bottom_navigation.dart';
import 'package:savart_remaster/src/global/widgets/profile_picture.dart';
import 'package:savart_remaster/src/resource/assets.dart';
import 'package:savart_remaster/src/resource/strings.dart';
import 'package:savart_remaster/src/resource/text_style.dart';

class ApplicationWrapper extends StatelessWidget {
  const ApplicationWrapper({super.key});

  static const route = "/application";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ProfilePicture(),
            Row(
              children: [
                Text(
                  AppStrings.appName,
                  style: AppTextStyles.largeLogo
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Image.asset(
                  ImageAssets.appIcon,
                  height: 50,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 32,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Consumer(
                builder: (context, ref, widget) {
                  return IndexedStack(
                    index: ref.watch(bottomNavigationIndex),
                    children: const [
                      PortfolioView(),
                      AdviceView(),
                    ],
                  );
                },
              ),
            ),
          ),
          const SavartBottomNavigation()
        ],
      ),
    );
  }
}
