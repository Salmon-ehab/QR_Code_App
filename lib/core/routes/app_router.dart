import 'package:go_router/go_router.dart';
import 'package:qr_code_app/core/routes/custom_page_transitions.dart';
import 'package:qr_code_app/core/routes/routes.dart';
import 'package:qr_code_app/feature/splash/presentation/views/splash_view.dart';

class AppRouter {
 static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
              child: const SplashView(), key: state.pageKey);
        })
  ]);
}
