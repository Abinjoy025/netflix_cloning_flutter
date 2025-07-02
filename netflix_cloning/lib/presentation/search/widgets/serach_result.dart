import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/search/widgets/title.dart';

const imageUrl =
    "https://www.joblo.com/wp-content/uploads/2025/02/havoc-poster-400x600.jpg";

class SerachResultWidget extends StatelessWidget {
  const SerachResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: "Movies & TV"),
        kHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
            children: List.generate(20, (index) {
              return const MainCard();
            }),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
