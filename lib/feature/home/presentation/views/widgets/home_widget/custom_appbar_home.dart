import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code_app/core/helper/my_responsive.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';
import 'package:qr_code_app/core/utils/svg_assets.dart';

class CustomAppbarHome extends StatelessWidget {
  const CustomAppbarHome({super.key, required this.mobileScanner});
  final MobileScannerController mobileScanner;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyResponsive.height(context, 45),
      width: double.infinity,
      padding: const EdgeInsets.only(left: 26, right: 26),
      margin: const EdgeInsets.only(right: 43, left: 43),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.black.withOpacity(.4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () async {},
              child: SvgPicture.asset(SvgAssets.galleryIcon)),
          InkWell(
              onTap: () async {
                await mobileScanner.toggleTorch();
              },
              child: SvgPicture.asset(SvgAssets.sensorIcon)),
          InkWell(
              onTap: () async {
                await mobileScanner.switchCamera();
              },
              child: SvgPicture.asset(SvgAssets.cameraIcon)),
        ],
      ),
    );
  }
}
