import 'package:flutter/material.dart';
import 'package:qr_code_app/core/helper/my_responsive.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';
import 'package:qr_code_app/core/utils/app_styles.dart';
import 'package:qr_code_app/feature/splash/presentation/views/widgets/onboarding_widgets/custom_button.dart';

class OnboardingContainer extends StatelessWidget {
  const OnboardingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: MyResponsive.height(context, 300),
          width: double.infinity,
          padding: const EdgeInsets.only(right: 50, left: 50),
          decoration: const BoxDecoration(
              color: AppColors.backGround,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(61), topRight: Radius.circular(61))),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Get Started", style: AppStyles.font42White2),
              SizedBox(height: 20),
              Text(
                "Go and enjoy our features for free and make your life easy with us.",
                style: AppStyles.font17White,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              CustomButton()
            ],
          ),
        );
  }
}