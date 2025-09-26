import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';
import 'package:onboarding_screens/ui/widgets/onbarding_data.dart';
import 'package:onboarding_screens/ui/widgets/onbarding_page.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void _nextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _skip() {
    _controller.jumpToPage(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardPages.length,
              onPageChanged: (i) => setState(() => _currentPage = i),
              itemBuilder: (_, i) => OnboardPages(item: onboardPages[i]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: _skip, child: const Text('Skip')),

                Row(
                  children: List.generate(
                    onboardPages.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPage == index
                            ? AppColors.black
                            : AppColors.black26,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: _nextPage,
                  child: Text(
                    _currentPage == onboardPages.length - 1 ? 'Finish' : 'Next',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
