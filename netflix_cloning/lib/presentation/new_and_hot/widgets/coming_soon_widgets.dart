import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_cloning/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kGreyColor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: const VideoWidget(),
              ),
              kHeight20,
              Row(
                children: [
                  Text(
                    "AG KIDS  2",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: -3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.notifications_active_outlined,
                        title: "Remind Me",
                        iconsize: 25,
                        textsize: 10,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info_outline,
                        title: "Info",
                        iconsize: 25,
                        textsize: 10,
                      ),
                      kWidth,
                      kWidth,
                    ],
                  ),
                ],
              ),
              // kHeight,
              const Text("Coming on Friday"),
              kHeight,
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
                    "FILM",
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
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                ),
              ),
              kHeight,
              Text(
                "Thunderbolts proved that Marvel still has it when it comes to story, execution, and a whole lot of fun. Sentry played a prominent role, with superpowers like Superman.",
                style: TextStyle(color: kGreyColor[400]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
