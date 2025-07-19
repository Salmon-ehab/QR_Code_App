import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_app/feature/splash/presentation/manager/splash_cubit.dart';
import 'package:qr_code_app/feature/splash/presentation/views/widgets/splash_widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => SplashCubit(this),
        child: const SplashBody(),
      ),
    );
  }
}
