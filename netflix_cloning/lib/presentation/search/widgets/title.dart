import 'package:flutter/material.dart';

class SearchTitleText extends StatelessWidget {
  final String title;
  const SearchTitleText({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}
