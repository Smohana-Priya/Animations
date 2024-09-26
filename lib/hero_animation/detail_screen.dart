import 'package:flutter/material.dart';
import 'animal_model.dart';

class DetailScreen extends StatefulWidget {
  final Animal animal;
  const DetailScreen({
    super.key,
    required this.animal,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.animal.imageUrl,
              child: Image.asset(
                widget.animal.imageUrl,
                fit: BoxFit.cover,
                width: media.width,
                height: media.height / 2.5,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.animal.fact,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
