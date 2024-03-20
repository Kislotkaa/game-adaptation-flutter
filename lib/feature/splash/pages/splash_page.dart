import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:game_adaptation_flutter/core/router/app_router.dart';
import 'package:game_adaptation_flutter/locator.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _listenerCallback();

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<void> _listenerCallback() async {
    await Future.delayed(const Duration(milliseconds: 800));
    sl<AppRouter>().pushAndPopUntil(const HomeRoute(), predicate: (Route<dynamic> route) => false);
  }
}
