import 'package:flutter/material.dart';

class SimpleCard extends StatefulWidget {
  const SimpleCard({super.key});

  @override
  State<SimpleCard> createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Explicit Example'),
      ),
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                child!,
                const SizedBox(
                  height: 20,
                ),
                Transform.scale(
                  scale: _animationController.value,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          );
        },
        child: const Text(
            "This child is not Related To Animation.\nSo won't rebuild when animation value changes."),
      ),
    );
  }
}
