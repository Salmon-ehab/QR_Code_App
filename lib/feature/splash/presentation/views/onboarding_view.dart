import 'package:flutter/material.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';
import 'package:qr_code_app/feature/splash/presentation/views/widgets/onboarding_widgets/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: OnboardingBody(),
    );
  }
}