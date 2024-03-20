import 'package:game_adaptation_flutter/core/cubit/intl_cubit/intl_cubit.dart';
import 'package:game_adaptation_flutter/core/cubit/intl_cubit/repository/intl_repository.dart';
import 'package:game_adaptation_flutter/core/cubit/theme_cubit/repository/theme_repository.dart';
import 'package:game_adaptation_flutter/core/cubit/theme_cubit/theme_cubit.dart';
import 'package:game_adaptation_flutter/core/router/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // --- Cubit --- \\
  sl.registerLazySingleton(
    () => ThemeCubit(themeRepository: sl()),
  );
  sl.registerLazySingleton(
    () => IntlCubit(intlRepository: sl()),
  );
  // ---------------- \\

  // --- Repositories --- \\
  sl.registerLazySingleton<ThemeRepository>(
    () => ThemeRepositoryImpl(
      sharedPreferences: sl(),
    ),
  );
  sl.registerLazySingleton<IntlRepository>(
    () => IntlRepositoryImpl(
      sharedPreferences: sl(),
    ),
  );

  final sharedPreferences = await SharedPreferences.getInstance();
  final appRouter = AppRouter();

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => appRouter);
}
