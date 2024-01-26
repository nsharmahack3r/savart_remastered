import 'package:flutter/material.dart';
import 'package:savart_remaster/src/resource/colors.dart';
import 'package:savart_remaster/src/resource/strings.dart';
import 'package:savart_remaster/src/utils/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        primaryColor: AppColors.customBlue,
        brightness: Brightness.dark,
      ),
      routerConfig: router,
    );
  }
}