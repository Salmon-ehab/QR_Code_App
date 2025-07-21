import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';
import 'package:qr_code_app/core/utils/png_assets.dart';
import 'package:qr_code_app/feature/home/presentation/views/widgets/home_widget/home_content_body.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(PngAssets.homeImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: AppColors.black.withOpacity(.4),
          ),
        ),
        const HomeContentBody()
      ],
    );
  }
}