import 'package:onboarding_screens/core/constants/app_assets.dart';

class OnboardItem {
  final String image;

  const OnboardItem({required this.image});
}

const List<OnboardItem> onboardPages = [
  OnboardItem(image: AppAssets.contentPng1),
  OnboardItem(image: AppAssets.contentPng2),
  OnboardItem(image: AppAssets.contentPng3),
];
