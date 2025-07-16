import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget defaultTransitions(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  const beginOffest = Offset(1, 0);
  const endOffest = Offset.zero;
  final tween = Tween<Offset>(begin: beginOffest, end: endOffest)
      .chain(CurveTween(curve: Curves.easeInOut));

  return FadeTransition(
    opacity: animation,
    child: SlideTransition(
      position: animation.drive(tween),
      child: child,
    ),
  );
}

CustomTransitionPage<T> buildPageWithTransition<T>({
  required Widget child,
  required LocalKey key,
}) {
  return CustomTransitionPage<T>(
    key: key,
    child: child,
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: defaultTransitions,
  );
}
