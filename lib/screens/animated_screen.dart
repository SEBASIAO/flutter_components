import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.redAccent;
  BorderRadiusGeometry _borderRadius = BorderRadiusDirectional.circular(15);

  void changeShape() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius =
          BorderRadiusDirectional.circular(random.nextInt(50).toDouble() + 10);
    });
  }

  Curve getRandomCurve() {
    final List curves = [
      Curves.bounceIn,
      Curves.bounceOut,
      Curves.easeInCirc,
      Curves.easeOutCirc,
      Curves.easeInCubic,
      Curves.easeOutCubic,
      Curves.elasticOut,
      Curves.elasticIn,
    ];

    return curves[Random().nextInt(7)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: getRandomCurve(),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_outlined),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }
}
