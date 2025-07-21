import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code_app/core/helper/my_responsive.dart';
import 'package:qr_code_app/core/utils/svg_assets.dart';
import 'package:qr_code_app/feature/splash/presentation/views/widgets/onboarding_widgets/onboarding_content.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MyResponsive.height(context, 247),
              right: MyResponsive.width(context, 114),
              left: MyResponsive.width(context, 114)),
          child: Column(
            children: [
              SvgPicture.asset(
                SvgAssets.onboardingQr,
              ),
            ],
          ),
        ),
        const OnboardingContainer()
      ],
    );
  }
}
