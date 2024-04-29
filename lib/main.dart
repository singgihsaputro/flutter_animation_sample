import 'package:animation/curve.dart';
import 'package:animation/fade_in.dart';
import 'package:animation/fade_in_out.dart';
import 'package:animation/home.dart';
import 'package:animation/shape_shifting.dart';
import 'package:animation/third_lirbaries.dart';
import 'package:animation/tween.dart';
import 'package:flutter/material.dart';

import 'fade_in_explicit.dart';
import 'hero.dart';
import 'hero_radial.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/fade_in': (context) => const FadeInScreen(),
        '/fade_in_out': (context) => const FadeInOutScreen(),
        '/shape_shifting': (context) => const ShapeShiftingScreen(),
        '/curve': (context) => const CurveScreen(),
        '/hero': (context) => const HeroScreen(),
        '/hero_radial': (context) => const HeroRadialScreen(),
        '/tween': (context) => const TweenScreen(),
        '/fade_in_explicit': (context) => const FadeInExplicitScreen(),
        '/fade_third': (context) => const ThirdLibraryScreen(),
      },
    );
  }
}