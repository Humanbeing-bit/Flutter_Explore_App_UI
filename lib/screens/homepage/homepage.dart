import 'package:flutter/material.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/bottom_navbar.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/custom_app_bar.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/custom_section.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/expanding_dots.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/placelists_builder.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/popular_catgs.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/recommd.dart';
import 'package:flutter_explore_app/screens/homepage/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchBar(),
            CustomSection(),
            PlaceLists(),
            ExpandingDots(),
            PopularCatgs(),
            Recomnd(),
            PlaceLists(),
          ],
        ),
      ),
    );
  }
}
