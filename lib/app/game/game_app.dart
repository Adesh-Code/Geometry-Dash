import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import '../../utils/styles.dart';
import 'game.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final GeometryDashGame _game;

  @override
  void initState() {
    super.initState();
    _game = GeometryDashGame();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DecoratedBox(
        decoration: const BoxDecoration(color: Styles.colorPrimary),
        child: SafeArea(
          child: Center(
            child: FittedBox(
              child: SizedBox(
                width: screenWidth,
                height: screeHeight,
                child: GameWidget(game: _game),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
