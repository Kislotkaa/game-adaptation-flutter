import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:game_adaptation_flutter/core/cubit/intl_cubit/intl_cubit.dart';
import 'package:game_adaptation_flutter/core/cubit/theme_cubit/theme_cubit.dart';
import 'package:game_adaptation_flutter/core/l10n/generated/l10n.dart';
import 'package:game_adaptation_flutter/core/router/app_router.dart';
import 'package:game_adaptation_flutter/core/utils/routing_observer.dart';
import 'package:game_adaptation_flutter/locator.dart' as di;
import 'package:game_adaptation_flutter/locator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => di.sl<ThemeCubit>()),
        BlocProvider<IntlCubit>(create: (context) => di.sl<IntlCubit>())
      ],
      child: BlocConsumer<ThemeCubit, ThemeState>(
        listener: (context, state) => di.sl<ThemeCubit>().rebuildAllChildren(context),
        listenWhen: (prev, current) => prev.isDarkMode != current.isDarkMode,
        builder: (context, themeState) => BlocBuilder<IntlCubit, IntlState>(
          builder: (_, intlState) => MaterialApp.router(
            locale: Locale(intlState.languageCode),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: 'Games',
            theme: sl<ThemeCubit>().getLightThemeData(),
            darkTheme: sl<ThemeCubit>().getDarkThemeData(),
            themeMode: themeState.themeMode,
            routerConfig: sl<AppRouter>().config(
              navigatorObservers: () => [RoutingObserver()],
            ),
          ),
        ),
      ),
    );
  }
}
