import 'package:flutter/material.dart';
import 'package:onboarding_screens/ui/widgets/onbarding_data.dart';

class OnboardPages extends StatelessWidget {
  final OnboardItem item;

  const OnboardPages({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset(item.image, width: 295, height: 413)],
    );
  }
}
