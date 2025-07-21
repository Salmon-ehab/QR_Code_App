import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code_app/core/helper/my_responsive.dart';
import 'package:qr_code_app/feature/home/presentation/views/widgets/home_widget/custom_appbar_home.dart';
import 'package:qr_code_app/feature/home/presentation/views/widgets/home_widget/custom_slider_widget.dart';
import 'package:qr_code_app/feature/home/presentation/views/widgets/home_widget/qr_widget.dart';

class HomeContentBody extends StatefulWidget {
  const HomeContentBody({super.key});

  @override
  State<HomeContentBody> createState() => _HomeContentBodyState();
}

class _HomeContentBodyState extends State<HomeContentBody> {
  late MobileScannerController mobileScanner;
  @override
  void initState() {
    super.initState();
    mobileScanner = MobileScannerController();
  }

  @override
  void dispose() {
    mobileScanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MyResponsive.height(context, 50),bottom:  MyResponsive.height(context, 30)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppbarHome(mobileScanner: mobileScanner),
            QrWidget(mobileScanner: mobileScanner),
            CustomSliderWidget(mobileScanner: mobileScanner)
          ],
        ),
      ),
    );
  }
}
