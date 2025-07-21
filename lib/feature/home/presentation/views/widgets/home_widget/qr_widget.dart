import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code_app/core/helper/my_responsive.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';
import 'package:qr_code_app/core/utils/svg_assets.dart';

class QrWidget extends StatelessWidget {
  const QrWidget({super.key, required this.mobileScanner});
  final MobileScannerController mobileScanner;

  @override
  Widget build(BuildContext context) {
    bool isScanCompleted = false;
    String? code;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(right: 43, left: 43),
          width: double.infinity,
          height: MyResponsive.height(context, 295),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: MobileScanner(
              controller: mobileScanner,
              fit: BoxFit.cover,
              onDetect: (BarcodeCapture capture) {
                if (!isScanCompleted) {
                  final List<Barcode> barcodes = capture.barcodes;
                  for (final barcode in barcodes) {
                    final String? value = barcode.rawValue;
                    if (value != null) {
                      log("✅ Barcode value: $value");
                      code = value;
                      log("✅ Barcode value: $code");
                    }
                  }
                }
              },
            ),
          ),
        ),
        SvgPicture.asset(
          SvgAssets.qrBorder,
          color: AppColors.secondaryColor,
          height: MyResponsive.height(context, 350),
          width: double.infinity,
        )
      ],
    );
  }
}
