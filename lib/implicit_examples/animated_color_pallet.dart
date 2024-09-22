// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedColorPallet extends StatefulWidget {
  const AnimatedColorPallet({super.key});

  @override
  State<AnimatedColorPallet> createState() => _AnimatedColorPalletState();
}

class _AnimatedColorPalletState extends State<AnimatedColorPallet> {
  List<Color> currentPalette = generateRandomPalette();

  static List<Color> generateRandomPalette() {
    final random = Random();
    return List.generate(5, (_) {
      return Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Palette Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (Color color in currentPalette)
              // AnimatedContainer(
              // duration: Duration(milliseconds: 2000),
              // curve: Curves.linear,
              Container(
                width: 100,
                height: 100,
                color: color,
                margin: const EdgeInsets.all(8),
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentPalette = generateRandomPalette();
                });
              },
              child: Text('Generate New Palette'),
            )
          ],
        ),
      ),
    );
  }
}
