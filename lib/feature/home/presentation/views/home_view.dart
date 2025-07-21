import 'package:flutter/material.dart';
import 'package:qr_code_app/feature/home/presentation/views/widgets/home_widget/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}