import 'package:auto_route/auto_route.dart';
import 'package:game_adaptation_flutter/core/router/app_router.dart';

class GameGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    late bool hameAccess = true;

    /// Какая то логика с доступом

    if (hameAccess) {
      resolver.next(hameAccess);
    } else {
      resolver.redirect(const HomeRoute());
    }
  }
}
