import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/game/game_app.dart';
import 'services/app.locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  await setupLocator();
  runApp(const GameApp());
}
