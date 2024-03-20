import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:game_adaptation_flutter/core/ui_kit/base_app_bar.dart';

@RoutePage()
class GlobalCapPage extends StatelessWidget {
  const GlobalCapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(title: 'Global Cap'),
      body: Center(
        child: Text('Игра закрыта!'),
      ),
    );
  }
}
