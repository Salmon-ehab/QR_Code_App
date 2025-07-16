import 'package:flutter/material.dart';
import 'package:qr_code_app/feature/splash/presentation/views/widgets/splash_widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: SplashBody(),
    );
  }
}
