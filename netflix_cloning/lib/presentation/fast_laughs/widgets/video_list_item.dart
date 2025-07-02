import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off, color: kWhiteColor),
                  ),
                ),

                //Right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: NetworkImage(
                          'https://www.joblo.com/wp-content/uploads/2025/05/Brad-Pitt-F1-The-Movie.jpg',
                        ),
                      ),
                    ),
                    VidoeActionWidget(icon: Icons.emoji_emotions, title: "LOL"),
                    VidoeActionWidget(icon: Icons.add, title: "My List"),
                    VidoeActionWidget(icon: Icons.share, title: "Share"),
                    VidoeActionWidget(icon: Icons.play_arrow, title: "Play"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VidoeActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VidoeActionWidget({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: kWhiteColor, size: 30),
          Text(title, style: TextStyle(fontSize: 12, color: kWhiteColor)),
        ],
      ),
    );
  }
}
