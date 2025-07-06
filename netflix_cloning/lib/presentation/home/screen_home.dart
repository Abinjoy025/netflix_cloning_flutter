import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/home/widgets/background_card.dart';

import 'package:netflix_cloning/presentation/home/widgets/number_title_card.dart';

import 'package:netflix_cloning/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = true;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = false;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCard(),
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
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Color.fromRGBO(
                          0,
                          0,
                          0,
                          0.7,
                        ), // RGB + 50% opacity

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://pngimg.com/uploads/netflix/netflix_PNG22.png",
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                Icon(Icons.cast, color: Colors.white, size: 30),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kWidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("TV Shows", style: kHometitletext),
                                Text("Movies", style: kHometitletext),
                                Text("Categories", style: kHometitletext),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}
