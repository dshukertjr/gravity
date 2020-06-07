import 'package:flutter/material.dart';

import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:gravity/box_game.dart';
import 'package:flutter/gestures.dart';

void main() {
  BoxGame game = BoxGame();
  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTapDown;
  runApp(game.widget);

  Util flameUtil = Util();
  flameUtil.fullScreen();
  flameUtil.setOrientation(DeviceOrientation.portraitUp);
}
