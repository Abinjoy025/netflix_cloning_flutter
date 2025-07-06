import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(newandhotTempImg, fit: BoxFit.cover),
        ),
        Positioned(
          right: 8,
          bottom: 5,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black54,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.volume_off, color: kWhiteColor),
            ),
          ),
        ),
      ],
    );
  }
}
