import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_code_app/core/helper/my_responsive.dart';
import 'package:qr_code_app/core/utils/svg_assets.dart';
import 'package:qr_code_app/feature/splash/presentation/manager/splash_cubit.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          SvgAssets.qrCode,
          height: MyResponsive.height(context, 150),
        ),
        AnimatedBuilder(
          animation: SplashCubit.get(context).dashAnimation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, SplashCubit.get(context).dashAnimation.value),
              child: child,
            );
          },
          child: SvgPicture.asset(
            SvgAssets.qrDash,
          ),
        ),
        ScaleTransition(
          scale: SplashCubit.get(context).scaleAnimation,
          child: SvgPicture.asset(
            SvgAssets.qrBorder,
            height: MyResponsive.height(context, 150),
          ),
        )
      ],
    );
  }
}
