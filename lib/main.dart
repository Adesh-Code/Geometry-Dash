import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'services/app.locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  final game = FlameGame();
  runApp(GameWidget(game: game));
}
