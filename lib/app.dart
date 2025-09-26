import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';
import 'package:onboarding_screens/core/helpers/pager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboard Pages',
      theme: ThemeData(
        // scaffoldBackgroundColor: AppColors.primary,
        primaryColor: AppColors.primary,
      ),
      home: Pager.onboard,
    );
  }
}
