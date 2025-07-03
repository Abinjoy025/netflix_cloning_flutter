import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/widgets/main_card.dart';
import 'package:netflix_cloning/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => MainCard()),
          ),
        ),
      ],
    );
  }
}
