import 'package:flutter/material.dart';
import 'package:netflix_cloning/core/colors/colors.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:netflix_cloning/presentation/new_and_hot/widgets/coming_soon_widgets.dart';
import 'package:netflix_cloning/presentation/new_and_hot/widgets/everyone_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),

          child: AppBar(
            titleSpacing: 0,
            title: Text(
              "New & Hot",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              Icon(Icons.cast, color: Colors.white, size: 30),
              kWidth,
              Container(width: 30, height: 30, color: Colors.blue),
              kWidth,
            ],
            bottom: TabBar(
              padding: EdgeInsets.zero,
              isScrollable: true,
              labelColor: kBlackColor,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: kWhiteColor,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: kWhiteColor,
                borderRadius: kRadius30,
              ),
              tabs: [
                Tab(text: "🍿 Coming Soon"),
                Tab(text: "👀 Everyone's Watching"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [_buildComingSoon(), _buildEveryoneWatching()],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryoneWatching() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) =>
          const EveryoneWatchingWidget(),
      itemCount: 10,
    );
  }
}
