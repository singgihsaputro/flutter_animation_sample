import 'package:flutter/material.dart';

class FadeExplicitWidget extends StatefulWidget {
  const FadeExplicitWidget({super.key});

  @override
  _FadeWidgetState createState() => _FadeWidgetState();
}

class _FadeWidgetState extends State<FadeExplicitWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();

    // Reverse the animation
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.blue,
      ),
    );
  }
}

class FadeInExplicitScreen extends StatelessWidget {
  const FadeInExplicitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FadeExplicitWidget(),
        ),
    );
  }
}