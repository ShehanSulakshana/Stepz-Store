import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stepz_store/core/theme/theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Expanded(
              child: Image.asset(
                'assets/images/onboarding_image.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20, width: double.infinity),
            Text(
              "Find Your Perfect Pair.",
              style: AppTheme.lightTheme.textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Discover the latest trends in footwear and step up your style game.",
              style: AppTheme.lightTheme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style:
                    AppTheme.lightTheme.elevatedButtonTheme.style ??
                    ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                onPressed: () {
                  // Navigate to the sign-in page
                  GoRouter.of(context).go('/signin');
                },
                child: const Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
