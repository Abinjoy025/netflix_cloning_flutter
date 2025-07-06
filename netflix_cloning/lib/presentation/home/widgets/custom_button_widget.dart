import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.icon,
    required this.title,
    this.textsize = 16,
    this.iconsize = 30,
    super.key,
  });
  final IconData icon;
  final String title;
  final double textsize;
  final double iconsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: kWhiteColor, size: iconsize),
        Text(
          title,
          style: TextStyle(fontSize: textsize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
