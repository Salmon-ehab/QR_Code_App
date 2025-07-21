import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({super.key, required this.mobileScanner});
  final MobileScannerController mobileScanner;

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  double _zoom = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 43, left: 43),
      child: Row(
        children: [
          const Icon(Icons.minimize, color: AppColors.grey),
          Expanded(
            child: Slider(
              value: _zoom,
              min: 0.0,
              max: 1.0,
              divisions: 100, // خليه أدق أكت
              onChanged: (val) async {
                setState(() {
                  _zoom = val;
                  log("Zoom set to: $val");
                });
              },
              onChangeEnd: (val) async {
                await widget.mobileScanner.setZoomScale(val);
              },
              activeColor: Colors.yellow,
            ),
          ),
          const Icon(Icons.add, color: AppColors.grey),
        ],
      ),
    );
  }
}
