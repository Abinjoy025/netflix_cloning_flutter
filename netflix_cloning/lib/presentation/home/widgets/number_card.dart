import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 180,
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(width: 35, height: 180),
              Container(
                width: 110,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: kRadius10,

                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.joblo.com/wp-content/uploads/2024/05/project-hail-mary-400x600.jpg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 2,
            bottom: -40,
            child: BorderedText(
              strokeWidth: 5.0,
              strokeColor: Colors.white,
              child: Text(
                "$index",
                style: TextStyle(
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 120,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
