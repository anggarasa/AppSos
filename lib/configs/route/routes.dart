import 'package:appsos/configs/route/route_name.dart';
import 'package:appsos/features/auth_login/view/login_page.dart';
import 'package:appsos/features/auth_register/view/register_page.dart';
import 'package:appsos/features/splash/view/splash_page.dart';
import 'package:appsos/features/main_menu/main_shell.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:appsos/configs/navigator_key.dart';

class Routes {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: "/splash",
    observers: [ChuckerFlutter.navigatorObserver],
    routerNeglect: true,
    routes: [
      GoRoute(
        path: "/splash",
        name: RouteName.splash,
        builder: (context, state) => SplashPage(),
      ),
      GoRoute(
        path: "/login",
        name: RouteName.login,
        builder: (context, state) => LoginPage(),
        routes: [
          GoRoute(
            path: "/register",
            name: RouteName.register,
            builder: (context, state) => RegisterPage(),
          ),
        ],
      ),
      GoRoute(
        path: "/main",
        name: RouteName.main,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: MainShell()),
      ),
    ],
  );
}
