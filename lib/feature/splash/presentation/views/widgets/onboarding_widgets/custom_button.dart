import 'package:flutter/material.dart';
import 'package:qr_code_app/core/helper/my_navigator.dart';
import 'package:qr_code_app/core/routes/routes.dart';
import 'package:qr_code_app/core/utils/app_colors.dart';
import 'package:qr_code_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), 
          ),
          onPressed: () {
            MyNavigator.goOffAll(context, Routes.home);
          },
          color: AppColors.secondaryColor,
          child: const Text(
            "Let’s Go",
            style: AppStyles.font18backG,
          )),
    );
  }
}
