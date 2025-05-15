import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pretium_finance/presentation/pages/splash/splash_screen.dart';
import 'package:pretium_finance/presentation/routes/routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter goRouter(BuildContext context) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: splashPath,
    navigatorKey: _rootNavigatorKey,
    redirect: (BuildContext context, GoRouterState state) {

    },
    routes: <RouteBase> [
      GoRoute(
        name: splashRoute,
        path: splashPath,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const SplashPage(),
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) =>
              FadeTransition(opacity: animation, child: child),
        ),
        )
    ]);
}