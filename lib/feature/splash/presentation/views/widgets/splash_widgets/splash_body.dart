import 'package:flutter/material.dart';
import 'package:qr_code_app/core/helper/my_responsive.dart';
import 'package:qr_code_app/feature/splash/presentation/manager/splash_cubit.dart';
import 'package:qr_code_app/feature/splash/presentation/views/widgets/splash_widgets/animation_widget.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    SplashCubit.get(context).animationBorder();
    SplashCubit.get(context).animationDash();
    SplashCubit.get(context).startTimer(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MyResponsive.height(context, 263)),
      child: const Center(
        child: Column(
          children: [
            AnimationWidget(),
          ],
        ),
      ),
    );
  }
}
