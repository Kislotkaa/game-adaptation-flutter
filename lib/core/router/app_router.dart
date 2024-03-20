import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:game_adaptation_flutter/feature/about/pages/about_page.dart';
import 'package:game_adaptation_flutter/feature/game/guards/game_guards.dart';
import 'package:game_adaptation_flutter/feature/game/pages/game_page.dart';
import 'package:game_adaptation_flutter/feature/global_cap/pages/global_cap_page.dart';
import 'package:game_adaptation_flutter/feature/home/pages/home_page.dart';
import 'package:game_adaptation_flutter/feature/menu/pages/menu_page.dart';
import 'package:game_adaptation_flutter/feature/settings/pages/settings_page.dart';
import 'package:game_adaptation_flutter/feature/splash/pages/splash_page.dart';
import 'package:game_adaptation_flutter/feature/stats/pages/stats_page.dart';
import 'package:game_adaptation_flutter/feature/unknown/pages/unknown_page.dart';
import 'package:game_adaptation_flutter/locator.dart';

part 'app_router.gr.dart';

AppRouter get router => sl<AppRouter>();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/',
          page: SplashRoute.page,
          durationInMilliseconds: 250,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          path: '/home',
          page: HomeRoute.page,
          durationInMilliseconds: 250,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            RedirectRoute(path: '', redirectTo: 'menu'),
            CustomRoute(
              path: 'menu',
              page: MenuRoute.page,
              durationInMilliseconds: 250,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              path: 'stats',
              page: StatsRoute.page,
              durationInMilliseconds: 250,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              path: 'settings',
              page: SettingsRoute.page,
              durationInMilliseconds: 250,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              path: 'about',
              page: AboutRoute.page,
              durationInMilliseconds: 250,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
          ],
        ),
        CustomRoute(
          path: '/game/:id',
          page: GameRoute.page,
          guards: [GameGuard()],
          durationInMilliseconds: 100,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          path: '/globalCap',
          page: GlobalCapRoute.page,
          durationInMilliseconds: 250,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          path: '*',
          page: UnknownRoute.page,
          durationInMilliseconds: 250,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
      ];
}
