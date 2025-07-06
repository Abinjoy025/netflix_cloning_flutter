import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_cloning/presentation/widgets/video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const VideoWidget(),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            kWidth,
            kWidth,
            SizedBox(
              width: 130,
              height: 45,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://loodibee.com/wp-content/uploads/marvel-studios-avengers-logo.png",
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            CustomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconsize: 23,
              textsize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconsize: 25,
              textsize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow_rounded,
              title: "Play",
              iconsize: 25,
              textsize: 14,
            ),
            kWidth,
          ],
        ),
        kHeight20,
        Row(
          children: [
            SizedBox(
              width: 18,
              height: 18,
              child: Image.network(
                "https://pngimg.com/uploads/netflix/netflix_PNG22.png",
              ),
            ),
            Text(
              "SERIES",
              style: TextStyle(
                fontSize: 9,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                color: kGreyColor,
              ),
            ),
          ],
        ),
        const Text(
          "Avengers Kids",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kWhiteColor,
          ),
        ),
        kHeight,
        Text(
          "Thunderbolts proved that Marvel still has it when it comes to story, execution, and a whole lot of fun. Sentry played a prominent role, with superpowers like Superman.",
          style: TextStyle(color: kGreyColor[400]),
        ),
        kHeight20,
      ],
    );
  }
}
