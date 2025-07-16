import 'package:flutter/material.dart';

abstract class MyResponsive {
  static double height(context, double value) =>
      MediaQuery.of(context).size.height * (value / 926);

  static double width(context, double value) =>
      MediaQuery.of(context).size.width * (value / 428);
}
