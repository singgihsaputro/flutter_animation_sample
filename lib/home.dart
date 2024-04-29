import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Implicit - Fade In'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/fade_in');
              },
            ),
            ElevatedButton(
              child: const Text('Implicit - Shape Shifting'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/shape_shifting');
              },
            ),
            ElevatedButton(
              child: const Text('Implicit - Curve'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/curve');
              },
            ),
            ElevatedButton(
              child: const Text('Implicit - Opacity Deno'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/fade_in_out');
              },
            ),
            ElevatedButton(
              child: const Text('Hero - Shared Element'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/hero');
              },
            ),
            ElevatedButton(
              child: const Text('Hero - Radial Shared Element'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/hero_radial');
              },
            ),
            ElevatedButton(
              child: const Text('Tween - Page Route'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/tween');
              },
            ),
            ElevatedButton(
              child: const Text('Explicit - Fade In'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/fade_in_explicit');
              },
            ),
            ElevatedButton(
              child: const Text('Third Library - Fade'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                Navigator.pushNamed(context, '/fade_third');
              },
            ),
          ],
        ),
      ),
    );
  }
}