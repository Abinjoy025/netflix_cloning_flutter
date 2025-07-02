import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/constants.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        Icon(Icons.cast, color: Colors.white, size: 30),
        kWidth,
        Container(width: 30, height: 30, color: Colors.blue),
        kWidth,
      ],
    );
  }
}
