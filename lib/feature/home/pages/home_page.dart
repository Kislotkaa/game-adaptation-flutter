import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_adaptation_flutter/core/router/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AutoRouter()),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: SafeArea(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      router.push(GameRoute(id: '1'));
                    },
                    child: const Text('Game'),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          router.push(const MenuRoute());
                        },
                        child: const Text('Menu'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          router.push(const StatsRoute());
                        },
                        child: const Text('Stats'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          router.push(const SettingsRoute());
                        },
                        child: const Text('Settings'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          router.push(const AboutRoute());
                        },
                        child: const Text('About'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
