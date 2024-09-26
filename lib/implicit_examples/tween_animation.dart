import 'package:flutter/material.dart';

class CircleTweenAimation extends StatefulWidget {
  const CircleTweenAimation({super.key});

  @override
  State<CircleTweenAimation> createState() => _CircleTweenAimationState();
}

class _CircleTweenAimationState extends State<CircleTweenAimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 200),
            duration: const Duration(milliseconds: 1500),
            builder: (context, size, widget) {
              return Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      blurRadius: size,
                      spreadRadius: size / 2,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
