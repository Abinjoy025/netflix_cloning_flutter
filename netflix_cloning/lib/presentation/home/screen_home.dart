import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';

import 'package:netflix_cloning/presentation/home/widgets/number_title_card.dart';

import 'package:netflix_cloning/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(kMainImage),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [_PlayButton()],
                  ),
                ),
              ],
            ),
            kHeight,
            MainTitleCard(title: "Released in the Past Year"),
            kHeight,
            MainTitleCard(title: "Trending Now"),
            kHeight,
            NumberTitleCard(),
            kHeight,
            MainTitleCard(title: "Tensed Dramas"),
            kHeight,
            MainTitleCard(title: "South Indian Cinema"),
            kHeight,
          ],
        ),
      ),
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(kWhiteColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // 🔳 No rounded corners
          ),
        ),
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text("Play", style: TextStyle(fontSize: 20, color: kBlackColor)),
      ),
      icon: Icon(Icons.play_arrow_rounded, size: 35, color: kBlackColor),
    );
  }
}
