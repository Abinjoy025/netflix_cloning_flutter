import 'package:flutter/material.dart';
import 'package:netflix_cloning/presentation/search/widgets/search_idle.dart';
import 'package:netflix_cloning/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_cloning/presentation/search/widgets/serach_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey[850],
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon: const Icon(Icons.close, color: Colors.grey),
                style: TextStyle(color: Colors.grey[200]),
              ),
              kHeight,
              // Expanded(child: const SearchIdleWidget()),
              Expanded(child: const SerachResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
