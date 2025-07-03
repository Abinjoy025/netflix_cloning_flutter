import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 130,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: kRadius10,

        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://www.joblo.com/wp-content/uploads/2025/01/running-man-poster-400x600.jpg",
          ),
        ),
      ),
    );
  }
}
