import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:game_adaptation_flutter/core/router/app_router.dart';

@RoutePage()
class GamePage extends StatelessWidget {
  const GamePage({
    Key? key,
    @pathParam required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      router.popUntilRoot();
                    },
                    child: const Text('Go to back'),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text('Игра: $id'),
          ),
        ],
      ),
    );
  }
}
