import 'package:flutter/material.dart';

import 'package:flame/util.dart';
import 'package:flutter/services.dart';

void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenWidget(),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
