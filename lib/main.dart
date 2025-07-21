import 'package:flutter/material.dart';
import 'package:qr_code_app/core/constatns/app_const_fonts.dart';
import 'package:qr_code_app/core/routes/app_router.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: AppColors.backGround,
          useMaterial3: true,
          fontFamily: AppConstFonts.appFont),
    );
  }
}
