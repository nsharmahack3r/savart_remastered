import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:savart_remaster/src/global/widgets/primary_button.dart';
import 'package:savart_remaster/src/resource/assets.dart';
import 'package:savart_remaster/src/resource/colors.dart';

class AdviceView extends StatelessWidget {
  const AdviceView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          dividerHeight: 0.0,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Creates border
            color: AppColors.customBlue,
          ),
          tabs: const [
            Tab(
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Advice",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Tab(
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Pending",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Tab(
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Scheduled",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Lottie.asset(
              AnimationAssets.empty,
            ),
            const Spacer(),
            PrimaryButton(
              text: "Subscribe Now",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
