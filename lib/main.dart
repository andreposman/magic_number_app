import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:magic_number_app/pages/asset_form_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: 'Magic Number - Calcule sua renda Passiva',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: NeumorphicThemeData(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        baseColor: Color(0x1C1C1C1C),
        accentColor: Colors.green,
        lightSource: LightSource.topLeft,
        depth: 2,
        intensity: 0.8,
        defaultTextColor: Color(0xF1F1F1F1),
      ),
      theme: NeumorphicThemeData(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        baseColor: Color(0xFFFFFFFF),
        accentColor: Colors.cyan,
        lightSource: LightSource.topLeft,
        depth: 2,
        intensity: 0.8,
        defaultTextColor: Color(0x1C1C1C1C),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: AssetFormPage(),
      ),
    );
  }
}
