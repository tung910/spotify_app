import 'package:auto_route/auto_route.dart';
import 'package:spotify/routes/index.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: IntroRoute.page,
          path: '/intro',
        ),
        AutoRoute(
            page: GetStartedRoute.page, path: '/get-started', initial: true),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
        ),
      ];
}
