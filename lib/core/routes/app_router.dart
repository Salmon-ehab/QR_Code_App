import 'package:go_router/go_router.dart';
import 'package:qr_code_app/core/routes/custom_page_transitions.dart';
import 'package:qr_code_app/core/routes/routes.dart';
import 'package:qr_code_app/feature/home/presentation/views/home_view.dart';
import 'package:qr_code_app/feature/splash/presentation/views/onboarding_view.dart';
import 'package:qr_code_app/feature/splash/presentation/views/splash_view.dart';

class AppRouter {
 static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
              child: const SplashView(), key: state.pageKey);
        }),
         GoRoute(
        path: Routes.onboarding,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
              child: const OnboardingView(), key: state.pageKey);
        }),
         GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
              child: const HomeView(), key: state.pageKey);
        }),
  ]);
}
