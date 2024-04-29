import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ThirdLibraryScreen extends StatelessWidget {
  const ThirdLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Hello, Flutter!')
        .animate()
        .fade(
      begin: 0.0, // Start fully transparent
      end: 1.0, // End fully opaque
      duration: Duration(seconds: 5), // Duration of the fade
      curve: Curves.easeInOut, // Animation curve
    );
  }
}