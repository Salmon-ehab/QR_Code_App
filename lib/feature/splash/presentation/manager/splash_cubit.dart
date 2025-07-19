import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_app/core/helper/my_navigator.dart';
import 'package:qr_code_app/core/routes/routes.dart';

class SplashCubit extends Cubit<void> {
  SplashCubit(this.vsync) : super(null);
  final TickerProvider vsync; 

  static SplashCubit get(context) => BlocProvider.of(context);

  late AnimationController controller;
  late Animation<double> scaleAnimation;
  late AnimationController dashController;
  late Animation<double> dashAnimation;

  void startTimer(BuildContext context) async {
    Future.delayed(const Duration(seconds: 5), () {
      MyNavigator.goOffAll(context, Routes.onboarding);
    });
  }

  void animationBorder() {
    controller =
        AnimationController(vsync: vsync, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    scaleAnimation = Tween<double>(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
  }

  void animationDash() {
    dashController =
        AnimationController(vsync: vsync, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    dashAnimation = Tween<double>(begin: 30, end: 90).animate(
        CurvedAnimation(parent: dashController, curve: Curves.easeInOut));
  }

  @override
  Future<void> close() {
    controller.dispose();
    dashController.dispose();
    return super.close();
  }
}
