import 'package:flutter/material.dart';
import 'package:netflix_cloning/presentation/widgets/main_title.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/home/widgets/number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 TV Shows in India Today"),
        kHeight,
        LimitedBox(
          maxHeight: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(index: index + 1),
            ),
          ),
        ),
      ],
    );
  }
}
