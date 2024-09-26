// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({super.key});

  @override
  _ExplicitAnimationState createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _borderRadiusAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _sizeAnimation = Tween<double>(begin: 50, end: 200).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));

    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    _borderRadiusAnimation = Tween<double>(begin: 0, end: 50)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animation Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: _sizeAnimation.value,
              height: _sizeAnimation.value,
              decoration: BoxDecoration(
                color: _colorAnimation.value,
                borderRadius:
                    BorderRadius.circular(_borderRadiusAnimation.value),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isAnimating) {
            _controller.stop();
          } else {
            // Start animation automatically
            _controller.repeat(reverse: true);
          }
          setState(() {});
        },
        child: Icon(
          _controller.isAnimating ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
