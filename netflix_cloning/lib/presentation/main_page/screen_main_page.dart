import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/presentation/downloads/screen_downloads.dart';
import 'package:netflix_cloning/presentation/fast_laughs/screen_fast_laughs.dart';
import 'package:netflix_cloning/presentation/home/screen_home.dart';
import 'package:netflix_cloning/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_cloning/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_cloning/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
