import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_adaptation_flutter/app.dart';
import 'package:game_adaptation_flutter/locator.dart' as di;

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await di.init();

    runApp(const App());
  }, (error, stackTrace) async {
    log(error.toString());
  });
}
