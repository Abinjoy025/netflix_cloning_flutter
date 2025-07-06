import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(title: "My List", icon: Icons.add),
                _PlayButton(),
                const CustomButtonWidget(
                  title: "Info",
                  icon: Icons.info_outline,
                ),
              ],
            ),
          ),
        ),
      ],
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
        child: Text(
          "Play",
          style: TextStyle(
            fontSize: 20,
            color: kBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      icon: Icon(Icons.play_arrow_rounded, size: 35, color: kBlackColor),
    );
  }
}
