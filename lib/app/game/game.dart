import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import '../../constants/constant.dart';
import '../../utils/styles.dart';
import '../cube/cube.dart';

class GeometryDashGame extends FlameGame {
  final cube = Cube(position: Vector2(0, 0));

  GeometryDashGame()
      : super(
            camera: CameraComponent.withFixedResolution(
                width: screenWidth, height: screeHeight));

  @override
  Future<void> onLoad() async {
    super.onLoad();

    world.add(cube);
  }

  @override
  Color backgroundColor() {
    return Styles.colorPrimary;
  }
}
