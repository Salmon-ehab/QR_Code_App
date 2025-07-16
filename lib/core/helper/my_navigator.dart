import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class MyNavigator {
  static goTo(BuildContext context, String path, {Object? extra}) {
    context.push(path, extra: extra);
  }

  static goOff(BuildContext context, String path, {Object? extra}) {
    context.replace(path, extra: extra);
  }

  static goOffAll(BuildContext context, String path, {Object? extra}) {
    context.go(path, extra: extra);
  }

  static pop(BuildContext context) {
    context.pop();
  }
}
