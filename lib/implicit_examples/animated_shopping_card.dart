import 'package:flutter/material.dart';

class AnimtedShoppingCard extends StatefulWidget {
  const AnimtedShoppingCard({super.key});

  @override
  State<AnimtedShoppingCard> createState() => _AnimtedShoppingCardState();
}

class _AnimtedShoppingCardState extends State<AnimtedShoppingCard> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            width: isExpanded ? 150 : 80.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: isExpanded ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  isExpanded ? Icons.check : Icons.shopping_cart,
                  color: Colors.white,
                ),
                if (isExpanded)
                  const Text(
                    'Added',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
