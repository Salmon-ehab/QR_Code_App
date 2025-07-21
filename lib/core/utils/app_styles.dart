import 'package:flutter/material.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';

abstract class AppStyles {
  static const TextStyle font42White2 = TextStyle(
    fontSize: 42,
    color: AppColors.white2,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle font17White = TextStyle(
    fontSize: 17,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle font18backG = TextStyle(
    fontSize: 18,
    color: AppColors.backGround,
    fontFamily: "inter",
    fontWeight: FontWeight.w700,
  );
}
